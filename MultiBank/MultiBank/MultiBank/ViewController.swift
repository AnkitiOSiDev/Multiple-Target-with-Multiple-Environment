//
//  ViewController.swift
//  MultiBank
//
//  Created by Ankit on 03/03/19.
//  Copyright © 2019 Ankit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = EnvironmentManager.environment.appName
        
        var environmentName = "No environment Detected"
        
        // We can handle different complex conditions for different environments using enum
        if let environment = EnvironmentManager.environment.environment {
            switch environment {
            case .qa:
                environmentName = "QA"
            case .uat:
                environmentName = "UAT"
            case .production:
                environmentName = "Production"
            }
        }
        
        lblWelcome.text = "Welcome to " + EnvironmentManager.environment.appName + " Bank with environment: " + environmentName
    }


}

