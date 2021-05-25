//
//  ViewController.swift
//  TrafficLight
//
//  Created by SummeR on 23.03.2021.
//

import UIKit

enum TrafficLightColors {
    case red
    case yellow
    case green
}

class ViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    //MARK: Public Properties
    let colorTransperancy: CGFloat = 0.5
    
    //MARK: Private Properties
    private var brightLight = TrafficLightColors.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    //MARK: Life Cicles Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        startButton.layer.cornerRadius = 10
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
    }
    
    //MARK: IB Actions
    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        switch brightLight {
        case .red:
            redLight.alpha = lightIsOn
            greenLight.alpha = lightIsOff
            brightLight = .yellow
            
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            brightLight = .green
        case .green:
            yellowLight.alpha = lightIsOff
            greenLight.alpha = lightIsOn
            brightLight = .red
        }
    }
}

