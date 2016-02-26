//
//  Scrollview.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 25.02.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class Scrollview: UIView {

    var scrollingView: UIScrollView
    var imageView: UIImageView
    
    override init(frame: CGRect) {
        
        scrollingView = UIScrollView(frame: .zero)
        scrollingView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView = UIImageView(frame: .zero)
        imageView.translatesAutoresizingMaskIntoConstraints = false

        imageView.image = UIImage(named: "big")
        super.init(frame: frame)
        
        backgroundColor = .whiteColor()
        
        scrollingView.addSubview(imageView)
        addSubview(scrollingView)
        
        let views = ["scrollingView": scrollingView, "imageView" : imageView]
        var layoutConstraints = [NSLayoutConstraint]()
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[scrollingView]|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|[scrollingView]|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|[imageView]|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|[imageView]|", options: [], metrics: nil, views: views)
        NSLayoutConstraint.activateConstraints(layoutConstraints)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
