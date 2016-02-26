//
//  MainView.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 12.01.16.
//  Copyright © 2016 My - Markus Schmitt. All rights reserved.
//

import UIKit

class MainView: UIView {
    
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
        
        self.addConstraint(NSLayoutConstraint(item: textField, attribute: .CenterY, relatedBy: .Equal, toItem: textLabel, attribute: .CenterY, multiplier: 1.0, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: textField, attribute: .Left, relatedBy: .Equal, toItem: textLabel, attribute: .Right, multiplier: 1.0, constant: 10.0))
        self.addConstraint(NSLayoutConstraint(item: textLabel, attribute: .Left, relatedBy: .Equal, toItem: self, attribute: .LeftMargin , multiplier: 1.0, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: textField, attribute: .Right, relatedBy: .Equal, toItem: self, attribute: .RightMargin , multiplier: 1.0, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: textLabel, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute , multiplier: 1.0, constant: textSize ))

    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
