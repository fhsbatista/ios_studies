//
//  ViewController.swift
//  BullsEye
//
//  Created by Fernando Batista on 31/10/21.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    var targetValue = 0
    
    // The @IBOutlet is necessary so the interface builder can see the attribute
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        slider.value = Float(currentValue)
        updateLabels()
    }
    
    func updateLabels() {
        targetLabel.text = String (targetValue)
    }
    
    func calculateDifference(value1: Int, value2: Int) -> Int {
//        let difference = (value1 - value2) * -1
//        if difference >= 0 {
//            return difference
//        } else {
//            return difference * -1
//        }
        return abs(value1 - value2)
    }
    

    @IBAction func showAlert() {
        let difference = abs(targetValue - currentValue)
        let score = 100 - difference
        let message = "You scored \(score)"
        
        let alert = UIAlertController(
            title: "Hello World",
            message: message,
            preferredStyle: .alert
        )
        
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil
        )
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        startNewRound()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
        
    }
    
    
    
}




