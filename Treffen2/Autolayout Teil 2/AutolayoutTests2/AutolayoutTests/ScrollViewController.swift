//
//  ScrollViewController.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 25.02.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {

    var mainView: Scrollview {
        return view as! Scrollview
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func loadView() {
        
        let contentView = Scrollview(frame: .zero)
        view = contentView
    }
    
}
