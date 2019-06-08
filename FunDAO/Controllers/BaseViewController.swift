//
//  BaseViewController.swift
//  FunDAO
//
//  Created by Wiktor Napierała on 08/06/2019.
//  Copyright © 2019 Wiktor Napierała. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    public var dataprovider = DataProvider()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.main.bounds)
        backgroundImage.image = UIImage(named: "background")
        backgroundImage.contentMode = UIView.ContentMode.scaleAspectFill
        self.view.insertSubview(backgroundImage, at: 0)
    }
}
