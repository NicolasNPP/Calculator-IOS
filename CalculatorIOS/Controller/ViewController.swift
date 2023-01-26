//
//  ViewController.swift
//  CalculatorIOS
//
//  Created by Nicolas Pepe on 26/01/2023.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Variables
    
    private var tot: Double = 0 //Total
    private var temp: Double = 0 //Valor en pantalla
    private var operating = false //Indica selección de operador
    private var decimal = false //Indica si el valor es decimal
    private var operation: OperationType = .none //Operación actual
    
    //MARK: - Constantes
    
    private let kDecimalSeparator = Locale.current.decimalSeparator!
    private let kmaxLength = 9
    private let kMaxValue: Double = 999999999
    private let kMinValue: Double = 0.000000001
    
    private enum OperationType {
        case none, addiction, substraction, multiplication, division, percent
    }
    
    
    //MARK: - Oulets
    
    //Result
    @IBOutlet weak var resultLabel: UILabel!
    
    //Numbers
    @IBOutlet weak var number0: UIButton!
    @IBOutlet weak var number1: UIButton!
    @IBOutlet weak var number2: UIButton!
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
        number0.round()
        number1.round()
        number2.round()
        number3.round()
        number4.round()
        number5.round()
        number6.round()
        number7.round()
        number8.round()
        number9.round()
        numberDecimall.round()
        operatorAc.round()
        operatorPlusMinus.round()
        operatePercent.round()
        operateResult.round()
        operateAddition.round()
        operateSubstraction.round()
        operateMultiplication.round()
        operateDivison.round()
    }
    
    //MARK: - Actions
    
    @IBAction func resultOperation(_ sender: UIButton) {
        
    }
    
    @IBAction func additionOperation(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func substractionOperation(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func multiplicationOperation(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func divisionOperation(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func percentOperation(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func plusMinusOperation(_ sender: UIButton) {
        sender.shine()
    }
 
    @IBAction func AcOperation(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func numberDecimalOperation(_ sender: UIButton) {
        sender.shine()
    }
    
    @IBAction func numberAction(_ sender: UIButton) {
        sender.shine()
    }
    
    
}

