//
//  ObjectLibraryView.swift
//  AutolayoutTests
//
//  Created by Cocoaheads on 20.02.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class ObjectLibraryView: UIView {

    var myTextLabel: UILabel
    var myTextField: UITextField
    var myButton: UIButton
    var myOtherButton: UIButton
    var mySegmentedControl: UISegmentedControl
    var mySlider: UISlider
    var myTextView: UITextView
    var myPickerView: UIPickerView
    var mySwitch: UISwitch
    
    override init(frame: CGRect) {
        
        // views
        
        // Label
        myTextLabel = MyObjectLibrary.MyLabel("Testlabel")
        let textSize = myTextLabel.intrinsicContentSize().width
        
        // Textfield
        myTextField = MyObjectLibrary.MyTextField("Bitte Text eingeben", secureText: false)
        
        // button
        myButton = MyObjectLibrary.MyButton("Press me", iconImage: UIImage(named: "test"))
        myButton.addTarget(nil, action: Selector("buttonPressed:"), forControlEvents: .TouchDown)
        // button
        myOtherButton = MyObjectLibrary.MyButton("Press me", iconImage: nil, tag: 1)
        myOtherButton.addTarget(nil, action: Selector("buttonPressed:"), forControlEvents: .TouchDown)

        // segmented control
        let values: [String] = ["a","b","c","d"]
        mySegmentedControl = MyObjectLibrary.MySegmentControl(values)
        mySegmentedControl.addTarget(nil, action: Selector("changeColor:"), forControlEvents: .ValueChanged)
        
        // slider
        mySlider = MyObjectLibrary.MySlider(0, maxValue: 100)
        
        // text view
        myTextView = MyObjectLibrary.MyTextView()
        
        // picker view
        myPickerView = MyObjectLibrary.MyPickerView()
        
        // Switch
        mySwitch = MyObjectLibrary.MySwitch(false)
        mySwitch.addTarget(nil, action: Selector("switchUsed:"), forControlEvents: .ValueChanged)
        
        super.init(frame: frame)
        
        backgroundColor = .whiteColor()
        
        addSubview(myTextLabel)
        addSubview(myTextField)
        addSubview(myButton)
        addSubview(myOtherButton)
        addSubview(mySegmentedControl)
        addSubview(mySlider)
        addSubview(myTextView)
        addSubview(myPickerView)
        addSubview(mySwitch)
        
         let views = ["myTextLabel" : myTextLabel, "myTextField" : myTextField, "myButton" : myButton, "mySegmentedControl": mySegmentedControl, "mySlider" : mySlider]
        let metrics = ["textSize" : textSize]
        
        var layoutConstraints = [NSLayoutConstraint]()
        
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[myTextLabel(textSize)]-[myTextField]-|", options: [], metrics: metrics, views: views)
        layoutConstraints.append(myTextLabel.centerYAnchor.constraintEqualToAnchor(myTextField.centerYAnchor))
        layoutConstraints.append(myButton.topAnchor.constraintEqualToAnchor(myTextLabel.bottomAnchor, constant: 20))
        layoutConstraints.append(myButton.leftAnchor.constraintEqualToAnchor(myTextLabel.leftAnchor))
        
        layoutConstraints.append(myOtherButton.widthAnchor.constraintEqualToAnchor(myTextLabel.widthAnchor, multiplier: 1.5))
        layoutConstraints.append(myOtherButton.heightAnchor.constraintEqualToAnchor(myTextLabel.heightAnchor, multiplier: 1))
        layoutConstraints.append(myOtherButton.rightAnchor.constraintEqualToAnchor(myTextField.rightAnchor))
        layoutConstraints.append(myButton.centerYAnchor.constraintEqualToAnchor(myOtherButton.centerYAnchor))
        
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:[myButton]-20-[mySegmentedControl]", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[mySegmentedControl]-|", options: [], metrics: nil, views: views)
        
        layoutConstraints.append(mySlider.leftAnchor.constraintEqualToAnchor(mySegmentedControl.leftAnchor))
        layoutConstraints.append(mySlider.rightAnchor.constraintEqualToAnchor(mySegmentedControl.rightAnchor))
        layoutConstraints.append(mySlider.heightAnchor.constraintEqualToAnchor(mySegmentedControl.heightAnchor))
        layoutConstraints.append(mySlider.topAnchor.constraintEqualToAnchor(mySegmentedControl.bottomAnchor, constant: 20))

        layoutConstraints.append(myTextView.leftAnchor.constraintEqualToAnchor(mySegmentedControl.leftAnchor))
        layoutConstraints.append(myTextView.rightAnchor.constraintEqualToAnchor(mySegmentedControl.rightAnchor))
        layoutConstraints.append(myTextView.heightAnchor.constraintEqualToAnchor(mySegmentedControl.heightAnchor))
        layoutConstraints.append(myTextView.topAnchor.constraintEqualToAnchor(mySegmentedControl.bottomAnchor, constant: 20))

        layoutConstraints.append(myPickerView.leftAnchor.constraintEqualToAnchor(myTextView.leftAnchor))
        layoutConstraints.append(myPickerView.rightAnchor.constraintEqualToAnchor(myTextView.rightAnchor))
        layoutConstraints.append(myPickerView.topAnchor.constraintEqualToAnchor(myTextView.bottomAnchor, constant: 20))
        layoutConstraints.append(myPickerView.heightAnchor.constraintEqualToConstant(100))

        layoutConstraints.append(mySwitch.leftAnchor.constraintEqualToAnchor(myPickerView.leftAnchor))
        layoutConstraints.append(mySwitch.topAnchor.constraintEqualToAnchor(myPickerView.bottomAnchor, constant: 20))

        NSLayoutConstraint.activateConstraints(layoutConstraints)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
