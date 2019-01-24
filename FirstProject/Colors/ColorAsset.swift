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
}

extension ColorAsset{
    var color : UIColor{
        return UIColor(named: self.rawValue)!
    }
}
protocol SegueHandlerType {
    associatedtype SegueIdentifier: RawRepresentable
}

extension SegueHandlerType where Self: UIViewController,
    ColorAsset.RawValue == String
{
    
    func performSegueWithIdentifier(colorAsset: ColorAsset,
                                    sender: AnyObject?) {
        
        performSegue(withIdentifier: colorAsset.rawValue, sender: sender)
    }
    
    func colorIdentifier(segue: UIStoryboardSegue) -> ColorAsset {
        
        // still have to use guard stuff here, but at least you're
        // extracting it this time
        guard let identifier = segue.identifier,
            let segueIdentifier = ColorAsset(rawValue: identifier) else {
                fatalError("Invalid segue identifier \(segue.identifier).") }
        
        return segueIdentifier
    }
}
