pragma solidity >=0.4.25 <0.6.0;

contract FunDAO {
	enum AUCTION_STATE { IN_PROGRESS, FAILED, SUCCESSFUL }

	uint goal;
	address payable beneficiary;
	mapping (address => uint) investors;
	uint public total;
	uint expired_at;
	AUCTION_STATE public state;
	uint called;

	constructor(uint _goal, address payable _beneficiary, uint _expired_at) public {
		goal = _goal;
		beneficiary = _beneficiary;
		expired_at = _expired_at;
		state = AUCTION_STATE.IN_PROGRESS;
	}

	function invest() public payable isInProgress() {
		address investor = msg.sender;
		uint value = msg.value;

		investors[investor] += value;
		total += value;

		updateState();
	}

	modifier isInProgress() {
		require(state == AUCTION_STATE.IN_PROGRESS);
		_;
	}

	function updateState() public {
		if (block.timestamp > expired_at) {
			state = AUCTION_STATE.FAILED;
		} else if(total >= goal) {
			state = AUCTION_STATE.SUCCESSFUL;
		}
	}

	// sends funds to beneficiary
	function execute() public {
		require(state == AUCTION_STATE.SUCCESSFUL);

		beneficiary.transfer(total);
	}

	function withdraw() public {
		require(state == AUCTION_STATE.FAILED);

		address payable investor = msg.sender;
		uint256 toSend = investors[investor];

		investors[investor] = 0;
		investor.transfer(toSend);
	}
}
