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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcButton.backgroundColor = #colorLiteral(red: 0.975127994, green: 0.610857702, blue: 0.08227838363, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)

        hourlyWageTextField.inputAccessoryView = calcButton
        itemPriceTextField.inputAccessoryView = calcButton
        
    }

    @objc func calculate() {
        
        
    }
    
    

}

