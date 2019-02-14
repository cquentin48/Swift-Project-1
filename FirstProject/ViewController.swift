//
//  ViewController.swift
//  FirstProject
//
//  Created by lpiem on 13/12/2018.
//  Copyright © 2018 lpiem. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var greenColorButton: UIButton!
    @IBOutlet weak var orangeButton: UIButton!
    @IBOutlet weak var purpleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Segue"{
            let secondViewController = segue.destinationViewController as! secondViewController
            secondViewController.message = "Passage au second view"
        }
    }
}

