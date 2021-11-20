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
    
    @IBOutlet var slider: UISlider!
    @IBOutlet var targetLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
    }
    
    func startNewRound() {
        targetValue = Int.random(in: 1...100)
        currentValue = 50
        targetLabel.text = targetValue
        slider.value = Float(currentValue)
    }
    

    @IBAction func showAlert() {
        let message = "The value of the slider is: \(currentValue) \nThe target value is: \(targetValue)"
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




