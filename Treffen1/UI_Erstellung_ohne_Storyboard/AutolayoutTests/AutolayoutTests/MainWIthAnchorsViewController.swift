//
//  MainWIthAnchorsViewController.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 12.01.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class MainWithAnchorsViewController: UIViewController {

    var mainWithAnchorsView: MainWithAnchorsView {
        return view as! MainWithAnchorsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        
        let contentView = MainWithAnchorsView(frame: .zero)
        view = contentView
    }
    
    override func viewWillLayoutSubviews() {
        
        let topLayoutGuide = self.topLayoutGuide
        
        NSLayoutConstraint.activateConstraints([NSLayoutConstraint(item: mainWithAnchorsView.textField, attribute: .Top, relatedBy: .Equal, toItem: topLayoutGuide, attribute: .Bottom , multiplier: 1, constant: 20)])
        NSLayoutConstraint.activateConstraints([NSLayoutConstraint(item: mainWithAnchorsView.textLabel, attribute: .Top, relatedBy: .Equal, toItem: topLayoutGuide, attribute: .Bottom , multiplier: 1, constant: 20)])
        
    }

}
