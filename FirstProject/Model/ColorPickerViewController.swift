//
//  ViewControllerSecond.swift
//  FirstProject
//
//  Created by lpiem on 13/12/2018.
//  Copyright © 2018 lpiem. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {
    var completionHandler : ((UIColor) -> Void)?
    
    @IBAction func orangeColor(_ sender: Any) {
        completionHandler?(ColorAsset.orange.uiColor)
    }
    @IBAction func greenColor(_ sender: Any) {
        completionHandler?(ColorAsset.green.uiColor)
    }
    @IBAction func purpleColor(_ sender: Any) {
        completionHandler?(ColorAsset.purple.uiColor)
    }
}
