// Created on: Oct-2018
// Created by: Ethan Bellem
// Created for: ICS3U
// This program will calculate the factorial of a number
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel : UILabel = UILabel()
    let numberLabel : UILabel = UILabel()
    let answerLabel : UILabel = UILabel()
    let numberTextField : UITextField = UITextField()
    let calculateButton : UIButton = UIButton()
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Enter the number that you want the factorial of."
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberLabel.text = "Enter number here:"
        view.addSubview(numberLabel)
        numberLabel.translatesAutoresizingMaskIntoConstraints = false
        numberLabel.topAnchor.constraint(equalTo: instructionsLabel.bottomAnchor, constant: 10).isActive = true
        numberLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        numberTextField.borderStyle = UITextBorderStyle.roundedRect
        numberTextField.placeholder = " Number "
        view.addSubview(numberTextField)
        numberTextField.translatesAutoresizingMaskIntoConstraints = false
        numberTextField.centerYAnchor.constraint(equalTo: numberLabel.centerYAnchor).isActive = true
        numberTextField.leadingAnchor.constraint(equalTo: numberLabel.trailingAnchor, constant: 10).isActive = true
        
        calculateButton.setTitle("Calcuate", for: UIControlState.normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(calculateFactorial), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        calculateButton.topAnchor.constraint(equalTo: numberLabel.bottomAnchor, constant: 10).isActive = true
        
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.centerYAnchor.constraint(equalTo: calculateButton.centerYAnchor, constant: 20).isActive = true
        answerLabel.leadingAnchor.constraint(equalTo: numberLabel.leadingAnchor).isActive = true
    }
    
    
    @objc func calculateFactorial() {
        // calculate and show factorial 
        var numberEntered = Int(numberTextField.text!)
        var previousAnswer : Int = 1
        var count : Int = 1
        
        for count in (1...numberEntered!).reversed() {
            previousAnswer = count * previousAnswer
        }
        answerLabel.text = "The factorial of \(numberEntered!) is \(previousAnswer)"
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
