//
//  MainStackButtonsView.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 13.01.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class MainStackButtonsView: UIView {

    var buttonStackView: UIStackView
    var buttonArray: [UIButton]
    var createNewButton: UIButton?
    var switchButton: UIButton
    
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

        switchButton = UIButton(frame: .zero)
        switchButton.translatesAutoresizingMaskIntoConstraints = false
        switchButton.setTitle("Ausrichtung ändern", forState: .Normal)
        switchButton.setTitleColor(UIColor.whiteColor(), forState: .Normal)
        switchButton.backgroundColor = UIColor.redColor()
        
        super.init(frame: frame)
        
        backgroundColor = .whiteColor()

        addSubview(buttonStackView)
        addSubview(switchButton)
        
        let views = ["buttonStackView" : buttonStackView, "switchButton" : switchButton]
        
        var layoutConstraints = [NSLayoutConstraint]()
        
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[buttonStackView]-|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[switchButton]-|", options: [], metrics: nil, views: views)
        NSLayoutConstraint.activateConstraints(layoutConstraints)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
