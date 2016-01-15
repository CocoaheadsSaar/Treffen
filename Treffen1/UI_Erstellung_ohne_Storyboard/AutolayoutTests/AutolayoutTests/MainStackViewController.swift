//
//  MainStackViewController.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 13.01.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class MainStackViewController: UIViewController {

    var mainStackView: MainStackView {
        return view as! MainStackView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        
        let contentView = MainStackView(frame: .zero)
        view = contentView
    }
    
    override func viewWillLayoutSubviews() {
        
        let topLayoutGuide = self.topLayoutGuide
        
        let views = ["topLayoutGuide": topLayoutGuide, "textStackView": mainStackView.textStackView] as [String:AnyObject]
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-(20)-[textStackView]", options: [], metrics: nil, views: views))
        
    }

}
