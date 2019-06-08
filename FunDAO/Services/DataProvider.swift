//
//  DataProvider.swift
//  FunDAO
//
//  Created by Wiktor Napierała on 08/06/2019.
//  Copyright © 2019 Wiktor Napierała. All rights reserved.
//

import Foundation

class DataProvider {
    var projects = [Project]()
    
    init() {
        projects.append(Project(title: "Project1", imageName: "proj1"))
        projects.append(Project(title: "Project2", imageName: "proj2"))
        projects.append(Project(title: "Project3", imageName: "proj3"))
        projects.append(Project(title: "Project4", imageName: "proj3"))
    }
}

class Project {
    var title: String
    public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
