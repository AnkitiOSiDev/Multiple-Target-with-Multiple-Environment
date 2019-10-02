//
//  Theme.swift
//  MultiBank
//
//  Created by Ankit on 03/03/19.
//  Copyright © 2019 Ankit. All rights reserved.
//

import Foundation
import UIKit

// Enum for the same style of apps
enum App {
    case multibank
    case sbi
    case hdfc
    case pnb
    case obc
}

// Structure having colors used in app
struct Colors {
    static let skyBlue = UIColor.init(red: (160.0/255.0), green: (240.0/255.0), blue: (240.0/255.0), alpha: 1)
}

// Class manages the Theme of different apps
class ThemeManager {
    var colorNavigationBar = UIColor.gray
    static let theme = ThemeManager() // Single Instatnce for same theme for one app
    var app : App?
    
    private init (){
        #if MULTIBANK_TARGET
            colorNavigationBar = .yellow
            app = .multibank
        #elseif SBI_TARGET
            colorNavigationBar = Colors.skyBlue
            app = .sbi
        #elseif HDFC_TARGET
          colorNavigationBar = .blue
          app = .hdfc
        #elseif PNB_TARGET
          colorNavigationBar = .red
          app = .pnb
        #elseif OBC_TARGET
          colorNavigationBar = .green
          app = .obc
        #endif
    }
}
