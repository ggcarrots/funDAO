//
//  ProjectViewController.swift
//  FunDAO
//
//  Created by Wiktor Napierała on 08/06/2019.
//  Copyright © 2019 Wiktor Napierała. All rights reserved.
//

import UIKit

class ProjectViewController: BaseViewController {

    @IBOutlet weak var buttonImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        buttonImage.isUserInteractionEnabled = true
        buttonImage.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.imageTap)))
    }
    
    @objc func imageTap() {
        self.performSegue(withIdentifier: "SupportSegue", sender: self)
    }
}
