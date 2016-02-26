//
//  MainVisualView.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 12.01.16.
//  Copyright © 2016 My - Markus Schmitt. All rights reserved.
//

import UIKit

class MainVisualView: UIView {

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
        
        let views = ["textLabel" : textLabel, "textField" : textField]
        let metrics = ["textSize" : textSize]
        
        var layoutConstraints = [NSLayoutConstraint]()
 
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[textLabel(textSize)]-[textField]-|", options: [], metrics: metrics, views: views)
        
        NSLayoutConstraint.activateConstraints(layoutConstraints)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
