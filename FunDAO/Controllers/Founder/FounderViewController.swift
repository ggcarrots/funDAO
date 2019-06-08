//
//  FounderViewController.swift
//  FunDAO
//
//  Created by Wiktor Napierała on 08/06/2019.
//  Copyright © 2019 Wiktor Napierała. All rights reserved.
//

import UIKit

class FounderViewController: BaseViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var projectsTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        projectsTable.backgroundColor = UIColor.clear
        projectsTable.separatorStyle = UITableViewCell.SeparatorStyle.none
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataprovider.projects.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let image = UIImage(named: dataprovider.projects[indexPath.row].imageName)
        
        cell.imageView?.image = image
        cell.backgroundColor = UIColor.clear
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat
    {
        let currentImage = UIImage(named: dataprovider.projects[indexPath.row].imageName)
        let imageRatio = currentImage!.getImageRatio()
        return tableView.frame.width / imageRatio
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "ProjectSegue", sender: self)
    }
}

extension UIImage {
    func getImageRatio() -> CGFloat {
        let imageRatio = CGFloat(self.size.width / self.size.height)
        return imageRatio
    }
}
