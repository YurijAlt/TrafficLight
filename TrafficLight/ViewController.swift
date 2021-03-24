//
//  ViewController.swift
//  TrafficLight
//
//  Created by SummeR on 23.03.2021.
//

import UIKit

class ViewController: UIViewController {
    
    enum TrafficLightColors {
        case red
        case yellow
        case green
    }
    
    //MARK: IB Outlets
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    //MARK: Public Properties
    let colorTransperancy: CGFloat = 0.5
    
    //MARK: Private Properties
    private var brightLight = TrafficLightColors.red
    
    
    //MARK: Life Cicles Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        redLight.layer.cornerRadius = redLight.bounds.height / 2
        redLight.alpha = colorTransperancy
        yellowLight.layer.cornerRadius = redLight.bounds.height / 2
        yellowLight.alpha = colorTransperancy
        greenLight.layer.cornerRadius = redLight.bounds.height / 2
        greenLight.alpha = colorTransperancy
        
        startButton.layer.cornerRadius = 10
    }
    
    //MARK: IB Actions
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        startButton.setTitle("NEXT", for: .normal)
        
        func changeColor(color: TrafficLightColors) {
            
            switch brightLight {
            case .red:
                redLight.alpha = 1
                greenLight.alpha = colorTransperancy
                brightLight = .yellow
                
            case .yellow:
                redLight.alpha = colorTransperancy
                yellowLight.alpha = 1
                brightLight = .green
            case .green:
                yellowLight.alpha = colorTransperancy
                greenLight.alpha = 1
                brightLight = .red
            }
        }
        changeColor(color: brightLight)
    }
}

