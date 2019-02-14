//
//  ColorPickerViewController.swift
//  FirstProject
//
//  Created by lpiem on 13/12/2018.
//  Copyright © 2018 lpiem. All rights reserved.
//

import UIKit

class ChooseAColorController: UIViewController {
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "pickColor"{
            let destVC = segue.destination as! ColorPickerViewController
            destVC.completionHandler = userDidChooseColor
        }
    }

}

//MARK: - ColorPickerViewDelegate
extension ChooseAColorController{
    func userDidChooseColor(color: UIColor) {
        print("Retour à l'écran de début! :)")
        dismiss(animated: true, completion: {
            UIView.animate(withDuration: 1, animations: {
                self.view.backgroundColor = color
            })
            
        })
        
        
    }
}
