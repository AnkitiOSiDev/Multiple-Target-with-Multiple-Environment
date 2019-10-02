//
//  EnvironmentManager.swift
//  MultiBank
//
//  Created by Ankit on 03/03/19.
//  Copyright © 2019 Ankit. All rights reserved.
//

import Foundation

// Enum for the environments in the app
enum Environment {
    case qa
    case uat
    case production
}

// Class manages the environment of the app
class EnvironmentManager {
    static let environment = EnvironmentManager() // Single Instatnce for same environment for one app
    var appName = ""
    var environment : Environment?
    
    private init (){
        if let bundleName = Bundle.main.infoDictionary?["CFBundleName"] as? String {
            appName = bundleName
        }
        
        #if QA
        environment = .qa
        #elseif UAT
        environment = .uat
        #elseif PRODUCTION
        environment = .production
        #endif
   }
}
