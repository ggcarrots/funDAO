//
//  SupportViewController.swift
//  FunDAO
//
//  Created by Wiktor Napierała on 08/06/2019.
//  Copyright © 2019 Wiktor Napierała. All rights reserved.
//

import UIKit

class SupportViewController: BaseViewController {

    @IBOutlet weak var amountImage: UIImageView!
    @IBOutlet weak var actionButton: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        amountImage.isUserInteractionEnabled = true
        amountImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.amountImageTap)))
    }

    @objc func amountImageTap() {
        amountImage.image = UIImage(named: "5on")
        
        actionButton.isUserInteractionEnabled = true
        actionButton.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.finalTap)))
    }
    
    @objc func finalTap() {
        self.performSegue(withIdentifier: "FinalSegue", sender: self)
    }
}
