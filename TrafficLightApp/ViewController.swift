//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Masaie on 1/3/22.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    
    @IBOutlet weak var changeTheLightButton: UIButton!
    
    private let lightsIsOn: CGFloat = 1
    private let lightsIsOff: CGFloat = 0.3
    private var currentLight: CurrentLight = .red
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorView.alpha = lightsIsOff
        yellowColorView.alpha = lightsIsOff
        greenColorView.alpha = lightsIsOff
        
        redColorView.backgroundColor = .red
        yellowColorView.backgroundColor = .yellow
        greenColorView.backgroundColor = .green
        
        changeTheLightButton.layer.cornerRadius = 10
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        setupConfigurationOfViews()
    }

    @IBAction func changingTheLightPressed() {
        if changeTheLightButton.currentTitle == "START" {
            changeTheLightButton.setTitle("NEXT", for: .normal)
        }

        switch currentLight {
        case .red:
            greenColorView.alpha = lightsIsOff
            redColorView.alpha = lightsIsOn
            currentLight = .yellow
        case .yellow:
            redColorView.alpha = lightsIsOff
            yellowColorView.alpha = lightsIsOn
            currentLight = .green
        case .green:
            yellowColorView.alpha = lightsIsOff
            greenColorView.alpha = lightsIsOn
            currentLight = .red
        }
    }
    
    private func setupConfigurationOfViews() {
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.width / 2
    }
}
