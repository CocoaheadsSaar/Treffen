//
//  MainStackButtonsView.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 13.01.16.
//  Copyright © 2016 My - Markus Schmitt. All rights reserved.
//

import UIKit

class MainStackButtonsView: UIView {

    var buttonStackView: UIStackView
    var buttonArray: [UIButton]
    var createNewButton: UIButton?
    
    override init(frame: CGRect) {
        
        // views
        
        buttonArray = []
        for buttonID in 1...4 {
            createNewButton = UIButton(frame: .zero)
            createNewButton!.setTitle( "Button \(buttonID)", forState: .Normal)
            createNewButton?.setTitleColor(UIColor.blackColor(), forState: .Normal)
            createNewButton!.translatesAutoresizingMaskIntoConstraints = false
            createNewButton?.layer.borderWidth = 1.0
            createNewButton!.tag = buttonID
            buttonArray.append(createNewButton!)
        }
        
        buttonStackView = UIStackView(arrangedSubviews: buttonArray)
        buttonStackView.translatesAutoresizingMaskIntoConstraints = false
        buttonStackView.axis = .Vertical
        buttonStackView.spacing = 5
        buttonStackView.distribution = .FillEqually
        
        super.init(frame: frame)
        
        backgroundColor = .whiteColor()
        

        addSubview(buttonStackView)
        
        let views = ["buttonStackView" : buttonStackView]
        
        var layoutConstraints = [NSLayoutConstraint]()
        
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[buttonStackView]-|", options: [], metrics: nil, views: views)
        NSLayoutConstraint.activateConstraints(layoutConstraints)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
