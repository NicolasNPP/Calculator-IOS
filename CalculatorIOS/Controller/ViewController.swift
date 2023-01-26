//
//  ViewController.swift
//  CalculatorIOS
//
//  Created by Nicolas Pepe on 26/01/2023.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Oulets
    
    //Result
    @IBOutlet weak var resultLabel: UILabel!
    
    //Numbers
    @IBOutlet weak var number1: UIButton!
    @IBOutlet weak var numer2: UIButton!
    @IBOutlet weak var number3: UIButton!
    @IBOutlet weak var number4: UIButton!
    @IBOutlet weak var number5: UIButton!
    @IBOutlet weak var number6: UIButton!
    @IBOutlet weak var number7: UIButton!
    @IBOutlet weak var number8: UIButton!
    @IBOutlet weak var number9: UIButton!
    @IBOutlet weak var numberDecimall: UIButton!
    
    //Operators
    @IBOutlet weak var operatorAc: UIButton!
    @IBOutlet weak var operatorPlusMinus: UIButton!
    @IBOutlet weak var operatePercent: UIButton!
    @IBOutlet weak var operateResult: UIButton!
    @IBOutlet weak var operateAddition: UIButton!
    @IBOutlet weak var operateSubstraction: UIButton!
    @IBOutlet weak var operateMultiplication: UIButton!
    @IBOutlet weak var operateDivison: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Actions
    
    @IBAction func resultOperation(_ sender: Any) {
    }
    
    @IBAction func additionOperation(_ sender: Any) {
    }
    
    @IBAction func substractionOperation(_ sender: Any) {
    }
    
    @IBAction func multiplicationOperation(_ sender: Any) {
    }
    
    @IBAction func divisionOperation(_ sender: Any) {
    }
    
    @IBAction func percentOperation(_ sender: Any) {
    }
    
    @IBAction func plusMinusOperation(_ sender: Any) {
    }
 
    @IBAction func AcOperation(_ sender: Any) {
    }
    
    @IBAction func numberDecimalOperation(_ sender: Any) {
    }
    
    @IBAction func numberAction(_ sender: UIButton) {
    }
    
    
}

