//
//  MainWIthAnchorsView.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 12.01.16.
//  Copyright © 2016 My - Markus Schmitt. All rights reserved.
//

import UIKit

class MainWithAnchorsView: UIView {

    var textLabel: UILabel
    var textField: UITextField
    
    override init(frame: CGRect) {
        
        // views
        textLabel = UILabel(frame: .zero)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = "Testlabel"
        let textSize = textLabel.intrinsicContentSize().width
        
        textField = UITextField(frame: .zero)
        textField.borderStyle = .Line
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        super.init(frame: frame)
        
        backgroundColor = .whiteColor()
        
        addSubview(textLabel)
        addSubview(textField)
        
        let margins = layoutMarginsGuide
        
        var layoutConstraints = [NSLayoutConstraint]()
        layoutConstraints.append(textLabel.centerYAnchor.constraintEqualToAnchor(textField.centerYAnchor))
        layoutConstraints.append(textField.leftAnchor.constraintEqualToAnchor(textLabel.rightAnchor, constant: 10.0))
        layoutConstraints.append(textLabel.leftAnchor.constraintEqualToAnchor(margins.leftAnchor))
        layoutConstraints.append(textField.rightAnchor.constraintEqualToAnchor(margins.rightAnchor))
        layoutConstraints.append(textLabel.widthAnchor.constraintEqualToConstant(textSize))

        NSLayoutConstraint.activateConstraints(layoutConstraints)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
