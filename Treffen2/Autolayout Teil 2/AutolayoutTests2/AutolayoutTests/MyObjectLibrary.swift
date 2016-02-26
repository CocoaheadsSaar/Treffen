//
//  MyObjectLibrary.swift
//
//  Created by Markus Schmitt on 24.01.16.
//  Copyright © 2016 My - Markus Schmitt. All rights reserved.
//

import Foundation
import UIKit

class MyObjectLibrary {
    
    class func MyLabel(labelText: String) -> UILabel {
        
        let returnedLabel: UILabel = UILabel(frame: .zero)
        returnedLabel.translatesAutoresizingMaskIntoConstraints = false
        returnedLabel.text = labelText
        returnedLabel.textColor = UIColor.blueColor()
        returnedLabel.textAlignment = .Center

        return returnedLabel
    }
    
    class func MyTextField(labelText: String, border: Bool, shadow: Bool) -> UITextField {

        let pStyle = NSMutableParagraphStyle()
        pStyle.alignment = .Center
        let shadowStyle = NSShadow()
        shadowStyle.shadowColor = UIColor.whiteColor()
        shadowStyle.shadowOffset = CGSizeMake(2.0,2.0)
        let shadowButtonStyle = NSShadow()
        shadowButtonStyle.shadowColor = UIColor.blackColor()
        shadowButtonStyle.shadowOffset = CGSizeMake(2.0, 2.0)

        let returnedTextField: UITextField = UITextField(frame: .zero)
        returnedTextField.translatesAutoresizingMaskIntoConstraints = false
        returnedTextField.enabled = true
        returnedTextField.borderStyle = .Bezel
        returnedTextField.backgroundColor = UIColor.lightGrayColor()
        returnedTextField.text = labelText
        returnedTextField.placeholder = labelText
        returnedTextField.attributedText  = NSAttributedString(string: labelText, attributes: [ NSForegroundColorAttributeName : UIColor.blackColor(), NSParagraphStyleAttributeName : pStyle ])

        if border == false {
            if shadow == false {
                returnedTextField.attributedText  = NSAttributedString(string: labelText, attributes: [ NSForegroundColorAttributeName : UIColor.blueColor(), NSParagraphStyleAttributeName : pStyle ])
            } else {
                returnedTextField.attributedText  = NSAttributedString(string: labelText, attributes: [ NSForegroundColorAttributeName : UIColor.blueColor(), NSParagraphStyleAttributeName : pStyle, NSShadowAttributeName : shadowStyle ])
            }
        } else {
            if shadow == false {
                returnedTextField.attributedText  = NSAttributedString(string: labelText, attributes: [ NSForegroundColorAttributeName : UIColor.blackColor(), NSParagraphStyleAttributeName : pStyle ])
            } else {
                returnedTextField.attributedText  = NSAttributedString(string: labelText, attributes: [ NSForegroundColorAttributeName : UIColor.blackColor(), NSParagraphStyleAttributeName : pStyle, NSShadowAttributeName : shadowStyle ])
            }
        }
        return returnedTextField

    }
    
    class func MyTextField(labelText: String, secureText: Bool) -> UITextField {
        let returnedTextField: UITextField = UITextField(frame: .zero)
        returnedTextField.translatesAutoresizingMaskIntoConstraints = false
        returnedTextField.enabled = true
        returnedTextField.backgroundColor = UIColor.lightGrayColor()
        returnedTextField.text = labelText
        returnedTextField.textColor = UIColor.blueColor()
        returnedTextField.borderStyle = UITextBorderStyle.Line
        returnedTextField.secureTextEntry=secureText
        return returnedTextField
    }

    class func MyButton(labelText: String, iconImage: UIImage?) -> UIButton {

        let returnedButton: UIButton = UIButton(frame: .zero)
        returnedButton.translatesAutoresizingMaskIntoConstraints = false
        
        if let icon = iconImage {
            returnedButton.setBackgroundImage(icon, forState: .Normal)
        } else {
            returnedButton.setTitle(labelText, forState: .Normal)
        }
        returnedButton.layer.borderWidth=0.5;
        returnedButton.layer.cornerRadius=2;
        return returnedButton
    }

    class func MyButton(labelText: String, iconImage: UIImage?, tag: Int) -> UIButton {
        let returnedButton: UIButton = UIButton(frame: .zero)
        returnedButton.translatesAutoresizingMaskIntoConstraints = false
        
        if let icon = iconImage {
            returnedButton.setBackgroundImage(icon, forState: .Normal)
        } else {
            returnedButton.setTitle(labelText, forState: .Normal)
        }
        returnedButton.setTitleColor(UIColor.blackColor(), forState: .Normal)
        returnedButton.setTitleColor(UIColor.blueColor(), forState: .Highlighted)
        returnedButton.tag = tag
        returnedButton.layer.borderWidth=0.5;
        returnedButton.layer.cornerRadius=2;

        return returnedButton
    }
    
    class func MySlider(minValue: Float, maxValue: Float) -> UISlider {

        let returnedSlider=UISlider(frame:.zero)
        returnedSlider.translatesAutoresizingMaskIntoConstraints = false
        returnedSlider.minimumValue = minValue
        returnedSlider.maximumValue = maxValue
        returnedSlider.continuous = false
        returnedSlider.value = 0
        return returnedSlider
    }

    class func MyDatePicker (today: Bool, showClock: Bool, showCalendar: Bool) -> UIDatePicker {
        let returnedDatePicker: UIDatePicker = UIDatePicker(frame: .zero)
        returnedDatePicker.translatesAutoresizingMaskIntoConstraints = false
        if showClock == true {
            if showCalendar == true {
                returnedDatePicker.datePickerMode = .DateAndTime
            } else {
                returnedDatePicker.datePickerMode = .Time
            }
        }
        if today == true {
            returnedDatePicker.date = NSDate()
        }
        return returnedDatePicker
    }
    
    class func MySegmentControl(segmentLabels: [String]) -> UISegmentedControl {
        let returnedSegmentControl: UISegmentedControl = UISegmentedControl(items: segmentLabels)
        returnedSegmentControl.translatesAutoresizingMaskIntoConstraints  = false
        returnedSegmentControl.layer.cornerRadius = 5.0
        returnedSegmentControl.backgroundColor = UIColor.blackColor()
        returnedSegmentControl.tintColor = UIColor.whiteColor()

        return returnedSegmentControl
    }

    class func MySegmentControlAktiv() -> UISegmentedControl {
        let returnedSegmentControl: UISegmentedControl = UISegmentedControl(frame: .zero)
        returnedSegmentControl.translatesAutoresizingMaskIntoConstraints  = false
        returnedSegmentControl.layer.cornerRadius = 5.0
        returnedSegmentControl.backgroundColor = UIColor.blackColor()
        returnedSegmentControl.tintColor = UIColor.whiteColor()
        returnedSegmentControl.setTitle(" Aktiv ", forSegmentAtIndex: 0)
        returnedSegmentControl.setTitle("Inaktiv", forSegmentAtIndex: 1)
        
        return returnedSegmentControl
    }
    
    class func MyTextView() -> UITextView {
        let returnedTextView: UITextView = UITextView(frame: .zero)
        returnedTextView.translatesAutoresizingMaskIntoConstraints = false
        returnedTextView.scrollEnabled = true
        returnedTextView.backgroundColor = UIColor.grayColor()
        returnedTextView.textColor = UIColor.blackColor()
        returnedTextView.textAlignment = .Center
        return returnedTextView
    }
    
    class func MyPickerView() -> UIPickerView {

        // Delegate and Datasource im View Controller nötig
        
        let returnedPicker: UIPickerView = UIPickerView(frame: .zero)
        returnedPicker.translatesAutoresizingMaskIntoConstraints = false
        return returnedPicker
    }

    class func MySwitch(on: Bool) -> UISwitch {
        let returnedSwitch: UISwitch = UISwitch(frame: .zero)
        returnedSwitch.translatesAutoresizingMaskIntoConstraints = false
        returnedSwitch.setOn(on, animated: true)
        return returnedSwitch
    }
    
}




