//
//  FinalViewController.swift
//  FunDAO
//
//  Created by Wiktor Napierała on 09/06/2019.
//  Copyright © 2019 Wiktor Napierała. All rights reserved.
//

import UIKit

class FinalViewController: BaseViewController {

    @IBOutlet weak var finalImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        finalImage.isUserInteractionEnabled = true
        finalImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.finalTap)))
    }
    
    @objc func finalTap() {
        self.performSegue(withIdentifier: "FallbackSegue", sender: self)
    }
}
