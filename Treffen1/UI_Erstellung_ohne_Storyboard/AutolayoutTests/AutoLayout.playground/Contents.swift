//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
let mainFrame = UIView(frame: CGRect(x: 0, y: 0, width: 375, height: 667)) // iPhone 6
mainFrame.backgroundColor = .whiteColor()

XCPlaygroundPage.currentPage.liveView = mainFrame

var textLabel: UILabel
var textField: UITextField

// views
textLabel = UILabel(frame: .zero)
textLabel.translatesAutoresizingMaskIntoConstraints = false
textLabel.text = "Testlabel"
let textSize = textLabel.intrinsicContentSize().width
        
textField = UITextField(frame: .zero)
textField.text = "Blablabla"

textField.translatesAutoresizingMaskIntoConstraints = false
textField.borderStyle = .Line

mainFrame.addSubview(textLabel)
mainFrame.addSubview(textField)
        
var layoutConstraints = [NSLayoutConstraint]()
layoutConstraints.append(textLabel.centerYAnchor.constraintEqualToAnchor(textField.centerYAnchor))
layoutConstraints.append(textField.leftAnchor.constraintEqualToAnchor(textLabel.rightAnchor, constant: 10.0))
layoutConstraints.append(textLabel.leftAnchor.constraintEqualToAnchor(mainFrame.leftAnchor, constant: 8.0))
layoutConstraints.append(textField.rightAnchor.constraintEqualToAnchor(mainFrame.rightAnchor, constant: 8.0))
layoutConstraints.append(textLabel.widthAnchor.constraintEqualToConstant(textSize))
layoutConstraints.append(textLabel.topAnchor.constraintEqualToAnchor(mainFrame.topAnchor, constant: 20.0))
layoutConstraints.append(textField.topAnchor.constraintEqualToAnchor(mainFrame.topAnchor, constant: 20.0))

NSLayoutConstraint.activateConstraints(layoutConstraints)

mainFrame
textField.frame
textField.bounds

textLabel.frame
textLabel.bounds

