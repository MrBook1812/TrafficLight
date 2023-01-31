//
//  ViewController.swift
//  TrafficLight
//
//  Created by Kirill Kniga on 31.01.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        startButton.layer.cornerRadius = 15
    }

    @IBAction func startButtonTap(_ sender: UIButton) {
        startButton.setTitle("Next", for: .normal)
        
        if redLight.alpha == 0.3 {
            redLight.alpha = 1
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.3
            yellowLight.alpha = 1
        } else if yellowLight.alpha == 1 {
            yellowLight.alpha = 0.3
            greenLight.alpha = 1
        } else {
            greenLight.alpha = 0.3
            redLight.alpha = 1
        }
    }
    
}

