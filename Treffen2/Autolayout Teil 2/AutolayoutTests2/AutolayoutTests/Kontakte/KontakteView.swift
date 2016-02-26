//
//  KontakteView.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 25.02.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class KontakteView: UIView {

    var kontakteList: UITableView
    
    override init(frame: CGRect) {
        
        // views
        // TableView
        kontakteList = UITableView(frame: .zero)
        kontakteList.translatesAutoresizingMaskIntoConstraints = false
        
        super.init(frame: frame)
        
        backgroundColor = .whiteColor()
        addSubview(kontakteList)
        
        let views = ["kontakteList": kontakteList]
        var layoutConstraints = [NSLayoutConstraint]()
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[kontakteList]|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|[kontakteList]|", options: [], metrics: nil, views: views)
        NSLayoutConstraint.activateConstraints(layoutConstraints)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
