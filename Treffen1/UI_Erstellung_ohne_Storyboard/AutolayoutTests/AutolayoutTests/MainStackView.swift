//
//  MainStackView.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 13.01.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class MainStackView: UIView {

    var textLabel: UILabel
    var textField: UITextField
    var textStackView: UIStackView
    
    override init(frame: CGRect) {
        
        // views
        textLabel = UILabel(frame: .zero)
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.text = "Testlabel"
        let textSize = textLabel.intrinsicContentSize().width
        
        textField = UITextField(frame: .zero)
        textField.borderStyle = .Line
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        textStackView = UIStackView(arrangedSubviews: [textLabel, textField])
        textStackView.translatesAutoresizingMaskIntoConstraints = false
        textStackView.axis = .Horizontal
        textStackView.spacing = 10
        textStackView.distribution = .Fill
        
        super.init(frame: frame)
        
        backgroundColor = .whiteColor()
        
        addSubview(textStackView)
        
        let views = ["textStackView" : textStackView]
        
        var layoutConstraints = [NSLayoutConstraint]()
        
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[textStackView]-|", options: [], metrics: nil, views: views)
        layoutConstraints.append(textLabel.widthAnchor.constraintEqualToConstant(textSize))
        NSLayoutConstraint.activateConstraints(layoutConstraints)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
