//
//  CurrencyTextField.swift
//  Window Shopper
//
//  Created by Mark Rabins on 8/27/17.
//  Copyright © 2017 self. All rights reserved.
//

import UIKit

@IBDesignable
class CurrencyTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        customizeTextField()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeTextField()
    }
    
    func customizeTextField() {
        // Using new color literal
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        
        layer.cornerRadius = 3.0
        textAlignment = .center
        clipsToBounds = true
        
        if let pText = placeholder {
            let place = NSAttributedString(string: pText, attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
            
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
    }
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.6668456824, green: 0.6668456824, blue: 0.6668456824, alpha: 0.8003840042)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
}
