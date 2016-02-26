//
//  MainViewController.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 12.01.16.
//  Copyright © 2016 My - Markus Schmitt. All rights reserved.
//

import UIKit

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
