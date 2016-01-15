//
//  MainStackButtonsViewController.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 13.01.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit
import Foundation

class MainStackButtonsViewController: UIViewController {

    var mainStackView: MainStackButtonsView {
        return view as! MainStackButtonsView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for newButton in mainStackView.buttonArray {
            newButton.addTarget(self, action: Selector("evaluateButton:"), forControlEvents: .TouchDown)
        }
        
        mainStackView.switchButton.addTarget(self, action: Selector("switchButtonAlignment:"), forControlEvents: .TouchDown)
        
    }
    
    override func loadView() {
        
        let contentView = MainStackButtonsView(frame: .zero)
        view = contentView
    }
    
    override func viewWillLayoutSubviews() {
        
        let topLayoutGuide = self.topLayoutGuide
        let bottomLayoutGuide = self.bottomLayoutGuide
        
        let views = ["topLayoutGuide": topLayoutGuide, "buttonStackView" : mainStackView.buttonStackView, "bottomLayoutGuide" : bottomLayoutGuide, "switchButton" : mainStackView.switchButton] as [String:AnyObject]
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-[buttonStackView]-[switchButton(40)]-[bottomLayoutGuide]", options: [], metrics: nil, views: views))
        
    }
    
    func evaluateButton(sender: UIButton) {
        print("Button : \(sender.tag)")
    }
    
    func switchButtonAlignment(sender: UIButton) {
        let newOrientation: UILayoutConstraintAxis = (mainStackView.buttonStackView.axis == .Horizontal) ? .Vertical : .Horizontal
        mainStackView.buttonStackView.axis = newOrientation
    }
    


}
