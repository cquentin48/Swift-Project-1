//
//  Colors.swift
//  FirstProject
//
//  Created by lpiem on 24/01/2019.
//  Copyright © 2019 lpiem. All rights reserved.
//

import Foundation
import UIKit


enum ColorAsset : String {
    case green
    case orange
    case purple
    
    var uiColor:UIColor{
        switch rawValue {
        case "green":
            return UIColor(named:"BerwerBaseGreen")!
        case "orange":
            return UIColor(named:"BerwerBaseOrange")!
        case "purple":
            return UIColor(named:"BerwerBasePurple")!
        default:
            return UIColor.white
        }
    }
}
