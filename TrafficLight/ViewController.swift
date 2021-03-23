//
//  ViewController.swift
//  TrafficLight
//
//  Created by SummeR on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = redLight.bounds.height / 2
        yellowLight.layer.cornerRadius = redLight.bounds.height / 2
        greenLight.layer.cornerRadius = redLight.bounds.height / 2
        startButton.layer.cornerRadius = 10
    }

    
    @IBAction func startButtonTapped(_ sender: UIButton) {
    }
    
}

