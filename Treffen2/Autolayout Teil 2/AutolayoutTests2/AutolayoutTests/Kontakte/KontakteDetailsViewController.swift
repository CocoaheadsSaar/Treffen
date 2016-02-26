//
//  KontakteDetailsViewController.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 25.02.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class KontakteDetailsViewController: UIViewController {

    var mainView: KontakteDetailsView {
        return view as! KontakteDetailsView
    }
    
    var setName: String = ""
    var setCompany: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let leftBarButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Cancel, target: self, action: "cancelButtonPressed:")
        self.navigationItem.setLeftBarButtonItem(leftBarButton, animated: true)
        let rigthBarButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Save, target: self, action: "saveButtonPressed:")
        self.navigationItem.setRightBarButtonItem(rigthBarButton, animated: true)
        
        if setName != "" {
            mainView.textField1.text = setName
        }
        if setCompany != "" {
            mainView.textField2.text = setCompany
        }

    }
    
    override func loadView() {
        
        let contentView = KontakteDetailsView(frame: .zero)
        view = contentView
    }
    
    override func viewWillLayoutSubviews() {
        
        let topLayoutGuide = self.topLayoutGuide
        
        let views = ["topLayoutGuide": topLayoutGuide, "textLabel1": mainView.textLabel1, "textField1": mainView.textField1] as [String:AnyObject]
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-(20)-[textLabel1]", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-(20)-[textField1]", options: [], metrics: nil, views: views))
        
    }

}

extension KontakteDetailsViewController {
    
    // Save
    func saveButtonPressed(sender: UIButton) {
        if let navController = self.navigationController {
            let master = navController.viewControllers[0] as! KontakteViewController
            master.addContactToData(mainView.textField1.text!, company: mainView.textField2.text!)
            navController.popViewControllerAnimated(true)
        }
    }
    
    // Cancel
    func cancelButtonPressed(sender: UIButton) {
        if let navController = self.navigationController {
            navController.popViewControllerAnimated(true)
        }
    }
}

