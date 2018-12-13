//
//  ColorPickerViewController.swift
//  FirstProject
//
//  Created by lpiem on 13/12/2018.
//  Copyright © 2018 lpiem. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController {
    private var delegate:ColorPickerViewDelegate

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

protocol ColorPickerViewDelegate {
    func userDidChooseColor(color: UIColor)}
