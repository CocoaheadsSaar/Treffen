//
//  MainVIsualViewController.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 12.01.16.
//  Copyright © 2016 My - Markus Schmitt. All rights reserved.
//

import UIKit

class MainVisualViewController: UIViewController {

    var mainVisualView: MainVisualView {
        return view as! MainVisualView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        
        let contentView = MainVisualView(frame: .zero)
        view = contentView
    }
    
    override func viewWillLayoutSubviews() {
        
        let topLayoutGuide = self.topLayoutGuide
        
        let views = ["topLayoutGuide": topLayoutGuide, "textLabel": mainVisualView.textLabel, "textField": mainVisualView.textField] as [String:AnyObject]
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-(20)-[textLabel]", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-(20)-[textField]", options: [], metrics: nil, views: views))
        
    }

}
