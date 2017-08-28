//
//  CurrencyTextField.swift
//  Window Shopper
//
//  Created by Mark Rabins on 8/27/17.
//  Copyright © 2017 self. All rights reserved.
//

import UIKit

class CurrencyTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Using new color literal
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        
        layer.cornerRadius = 3.0
        textAlignment = .center
 
        if let pText = placeholder {
            let place = NSAttributedString(string: pText, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            
        }
    }
}
