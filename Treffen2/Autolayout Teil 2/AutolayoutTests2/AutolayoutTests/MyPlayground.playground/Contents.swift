//: Playground - noun: a place where people can play

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
        
        self.addConstraint(NSLayoutConstraint(item: textField, attribute: .Baseline, relatedBy: .Equal, toItem: textLabel, attribute: .Baseline, multiplier: 1.0, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: textField, attribute: .Left, relatedBy: .Equal, toItem: textLabel, attribute: .Right, multiplier: 1.0, constant: 10.0))
        self.addConstraint(NSLayoutConstraint(item: textLabel, attribute: .Left, relatedBy: .Equal, toItem: self, attribute: .LeftMargin , multiplier: 1.0, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: textField, attribute: .Right, relatedBy: .Equal, toItem: self, attribute: .RightMargin , multiplier: 1.0, constant: 0))
        self.addConstraint(NSLayoutConstraint(item: textLabel, attribute: .Width, relatedBy: .Equal, toItem: nil, attribute: .NotAnAttribute , multiplier: 1.0, constant: textSize ))
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class MainViewController: UIViewController {
    
    var mainView: MainView {
        return view as! MainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        
        let contentView = MainView(frame: .zero)
        view = contentView
    }
    
    override func viewWillLayoutSubviews() {
        
        NSLayoutConstraint.activateConstraints([NSLayoutConstraint(item: mainView.textField, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide, attribute: .Bottom , multiplier: 1, constant: 20)])
        NSLayoutConstraint.activateConstraints([NSLayoutConstraint(item: mainView.textLabel, attribute: .Top, relatedBy: .Equal, toItem: self.topLayoutGuide, attribute: .Bottom , multiplier: 1, constant: 20)])
        
    }
    
}

var window: UIWindow? = UIWindow(frame: UIScreen.mainScreen().bounds)

let mainViewController = MainViewController()
window?.rootViewController = mainViewController
window?.makeKeyAndVisible()

