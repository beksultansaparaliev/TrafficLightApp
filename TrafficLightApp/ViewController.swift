//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Masaie on 1/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redColor: UIView!
    @IBOutlet weak var yellowColor: UIView!
    @IBOutlet weak var greenColor: UIView!
    @IBOutlet weak var changeTheLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColor.layer.cornerRadius = 60
        redColor.backgroundColor = .red
        redColor.alpha = 0.3
        
        yellowColor.layer.cornerRadius = 60
        yellowColor.backgroundColor = .yellow
        yellowColor.alpha = 0.3
        
        greenColor.layer.cornerRadius = 60
        greenColor.backgroundColor = .green
        greenColor.alpha = 0.3
        
        changeTheLightButton.layer.cornerRadius = 10
    }

    @IBAction func changingTheLight() {
        
        if redColor.alpha != 1 && yellowColor.alpha != 1 && greenColor.alpha != 1 {
            changeTheLightButton.setTitle("NEXT", for: .normal)
            redColor.alpha = 1
        } else if redColor.alpha == 1 && yellowColor.alpha != 1 && greenColor.alpha != 1 {
            yellowColor.alpha = 1
            redColor.alpha = 0.3
        } else if redColor.alpha != 1 && yellowColor.alpha == 1 && greenColor.alpha != 1 {
            greenColor.alpha = 1
            yellowColor.alpha = 0.3
        } else if redColor.alpha != 1 && yellowColor.alpha != 1 && greenColor.alpha == 1 {
            redColor.alpha = 1
            greenColor.alpha = 0.3
        }
    }
}

