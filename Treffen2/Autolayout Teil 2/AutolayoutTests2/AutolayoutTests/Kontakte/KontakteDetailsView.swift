//
//  KontakteDetailsView.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 25.02.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class KontakteDetailsView: UIView {

    var textLabel1: UILabel
    var textField1: UITextField
    var textLabel2: UILabel
    var textField2: UITextField
    
    override init(frame: CGRect) {
        
        // views
        textLabel1 = MyObjectLibrary.MyLabel("Name")
        let textSize1 = textLabel1.intrinsicContentSize().width
        textField1 = MyObjectLibrary.MyTextField(" ", border: true, shadow: false)
        textField1.userInteractionEnabled = true
        textField1.becomeFirstResponder()

        // views
        textLabel2 = MyObjectLibrary.MyLabel("Unternehmen")
        let textSize2 = textLabel2.intrinsicContentSize().width
        textField2 = MyObjectLibrary.MyTextField(" ", border: true, shadow: false)
        textField2.userInteractionEnabled = true
        textField2.becomeFirstResponder()

        super.init(frame: frame)
        
        backgroundColor = UIColor.whiteColor()
        
        addSubview(textLabel1)
        addSubview(textField1)
        addSubview(textLabel2)
        addSubview(textField2)

        
        let views = ["textField1" : textField1, "textLabel1" : textLabel1, "textField2" : textField2, "textLabel2" : textLabel2 ]
        let metrics = ["textSize1" : textSize1, "textSize2" : textSize2]
        
        var layoutConstraints = [NSLayoutConstraint]()
        
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[textLabel1(textSize2)]-[textField1]-|", options: [], metrics: metrics, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[textLabel2(textSize2)]-[textField2]-|", options: [], metrics: metrics, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel1]-[textLabel2]", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[textField1]-[textField2]", options: [], metrics: nil, views: views)
        
        NSLayoutConstraint.activateConstraints(layoutConstraints)
     }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
