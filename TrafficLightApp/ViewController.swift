//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Masaie on 1/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    @IBOutlet weak var changeTheLightButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConfigurationOfViews()
    }

    @IBAction func changingTheLightPressed() {
        
        if redColorView.alpha != 1 && yellowColorView.alpha != 1 && greenColorView.alpha != 1 {
            changeTheLightButton.setTitle("NEXT", for: .normal)
            redColorView.alpha = 1
        } else if redColorView.alpha == 1 && yellowColorView.alpha != 1 && greenColorView.alpha != 1 {
            yellowColorView.alpha = 1
            redColorView.alpha = 0.3
        } else if redColorView.alpha != 1 && yellowColorView.alpha == 1 && greenColorView.alpha != 1 {
            greenColorView.alpha = 1
            yellowColorView.alpha = 0.3
        } else if redColorView.alpha != 1 && yellowColorView.alpha != 1 && greenColorView.alpha == 1 {
            redColorView.alpha = 1
            greenColorView.alpha = 0.3
        }
    }
    
    private func setupConfigurationOfViews() {
        redColorView.layer.cornerRadius = 60
        redColorView.backgroundColor = .red
        redColorView.alpha = 0.3
        
        yellowColorView.layer.cornerRadius = 60
        yellowColorView.backgroundColor = .yellow
        yellowColorView.alpha = 0.3
        
        greenColorView.layer.cornerRadius = 60
        greenColorView.backgroundColor = .green
        greenColorView.alpha = 0.3
        
        changeTheLightButton.layer.cornerRadius = 10
    }
}

