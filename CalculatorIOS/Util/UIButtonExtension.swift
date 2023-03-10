//
//  UIButtonExtension.swift
//  CalculatorIOS
//
//  Created by Nicolas Pepe on 26/01/2023.
//

import UIKit

extension UIButton {
    // Borde redondo
       func round() {
           layer.cornerRadius = bounds.height / 2.1
           clipsToBounds = true
       }
       
    // Brillo
        func shine() {
            UIView.animate(withDuration: 0.1, animations: {
                self.alpha = 0.5
            }) { (completion) in
                UIView.animate(withDuration: 0.1, animations: {
                    self.alpha = 1
                })
            }
        }
}
