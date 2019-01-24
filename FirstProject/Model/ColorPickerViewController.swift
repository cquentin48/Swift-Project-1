//
//  ViewControllerSecond.swift
//  FirstProject
//
//  Created by lpiem on 13/12/2018.
//  Copyright © 2018 lpiem. All rights reserved.
//

import UIKit

protocol ColorPickerViewDelegate {
    func userDidChooseColor(color: UIColor)
}



class ColorPickerViewController: UIViewController{
    var delegate: ColorPickerViewDelegate?
    
    @IBAction func orangeColor(_ sender: Any) {
        delegate?.userDidChooseColor(color: (ColorAsset.orange.uiColor))
        //delegate?.userDidChooseColor(color: UIColor(named:"BerwerBaseOrange")!)
    }
    @IBAction func greenColor(_ sender: Any) {
        delegate?.userDidChooseColor(color: (ColorAsset.green.uiColor))
    }
    @IBAction func purpleColor(_ sender: Any) {
        delegate?.userDidChooseColor(color: (ColorAsset.purple.uiColor))
    }
}
