//
//  MainVC.swift
//  Window Shopper
//
//  Created by Mark Rabins on 8/27/17.
//  Copyright © 2017 self. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    
    @IBOutlet weak var hourlyWageTextField: CurrencyTextField!
    @IBOutlet weak var itemPriceTextField: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.975127994, green: 0.610857702, blue: 0.08227838363, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        hourlyWageTextField.inputAccessoryView = calcButton
        itemPriceTextField.inputAccessoryView = calcButton
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
    }
    
    @objc func calculate() {
        if let wageText = hourlyWageTextField.text, let priceText = itemPriceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                view.endEditing(true)
                
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
            
        }
        
        
        
    }
    
    
    @IBAction func clearCalculatorButtonPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        
        hourlyWageTextField.text = nil
        itemPriceTextField.text = nil
    }
    
}

