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
    
    //Formatos de valores auxiliar
    private let auxFormatter: NumberFormatter = {
       let formatter = NumberFormatter()
        let locale = Locale.current
        formatter.groupingSeparator = ""
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        return formatter
    }()
    
    //Formato de valores en pantalla por defecto
    private let printFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
         let locale = Locale.current
        formatter.groupingSeparator = locale.groupingSeparator
        formatter.decimalSeparator = locale.decimalSeparator
        formatter.numberStyle = .decimal
        formatter.maximumIntegerDigits = 9
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 8
        return formatter
    }()
    
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
        
        numberDecimall.setTitle(kDecimalSeparator, for: .normal)
        
        result()
    }
    
    //MARK: - Actions
    
    @IBAction func resultOperation(_ sender: UIButton) {
        
        result()
        sender.shine()
        
    }
    
    @IBAction func additionOperation(_ sender: UIButton) {
        
        result()
        operating = true
        operation = .addiction
        
        sender.shine()
    }
    
    @IBAction func substractionOperation(_ sender: UIButton) {
        
        result()
        operating = true
        operation = .substraction
        
        sender.shine()
    }
    
    @IBAction func multiplicationOperation(_ sender: UIButton) {
        
        result()
        operating = true
        operation = .multiplication
        
        sender.shine()
    }
    
    @IBAction func divisionOperation(_ sender: UIButton) {
        
        result()
        operating = true
        operation = .division
        
        sender.shine()
    }
    
    @IBAction func percentOperation(_ sender: UIButton) {
        
        if operation != .percent {
            result()
        }
        
        operating = true
        operation = .percent
        sender.shine()
    }
    
    @IBAction func plusMinusOperation(_ sender: UIButton) {
        
        temp = temp * (-1)
        
        resultLabel.text = printFormatter.string(from: NSNumber(value: temp))
        
        sender.shine()
    }
 
    @IBAction func AcOperation(_ sender: UIButton) {
        clear()
        sender.shine()
        
    }
    
    @IBAction func numberDecimalOperation(_ sender: UIButton) {
        
        let currentTemp = auxFormatter.string(from: NSNumber(value: temp))!
        
        if !operating && currentTemp.count >= kmaxLength {
            return
        }
        
        resultLabel.text = resultLabel.text! + kDecimalSeparator
        
        decimal = true
        
        sender.shine()
    }
    
    @IBAction func numberAction(_ sender: UIButton) {
        
        operatorAc.setTitle("C", for: .normal)
        
        var currentTemp = auxFormatter.string(from: NSNumber(value: temp))!
        
        if !operating && currentTemp.count >= kmaxLength {
            return
        }
        
        if operating {
            tot = tot == 0 ? temp : tot
            resultLabel.text = ""
            currentTemp = ""
            operating = false
        }
        
        if decimal {
            currentTemp = "\(currentTemp)\(kDecimalSeparator)"
            decimal = false
        }
        
        let number = sender.tag
        temp = Double(currentTemp + String(number))!
        
        resultLabel.text = printFormatter.string(from: NSNumber(value: temp))
        
        sender.shine()
    }
    
    //Limpia valores
    private func clear(){
        operation = .none
        operatorAc.setTitle("AC", for: .normal)
        if temp != 0 {
            temp = 0
            resultLabel.text = "0"
        } else {
            tot = 0
            result()
        }
    }
    
    //Resultado final
    private func result(){
        
        switch operation {
        case .none:
            break
        case .addiction:
            tot = tot + temp
            break
        case .substraction:
            tot = tot - temp
            break
        case .multiplication:
            tot = tot * temp
            break
        case .division:
            tot = tot / temp
            break
        case .percent:
            temp = temp / 100
            tot = temp
            break
        }
        
    //Formato en pantalla
        if tot <= kMaxValue || tot >= kMinValue {
            resultLabel.text = printFormatter.string(from: NSNumber(value: tot))
        }
        
        print(tot)
    }
}

