//
//  ObjectLibraryViewController.swift
//  AutolayoutTests
//
//  Created by Cocoaheads on 20.02.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class ObjectLibraryViewController: UIViewController {

    var objectLibraryView: ObjectLibraryView {
        return view as! ObjectLibraryView
    }
    
    var pickerData = ["a","b","c","d"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        objectLibraryView.myPickerView.delegate = self
        objectLibraryView.myPickerView.dataSource = self

        // NavBarButtons
        let leftBarButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Cancel, target: self, action: "leftButtonPressed:")
        self.navigationItem.setLeftBarButtonItem(leftBarButton, animated: true)
        let rigthBarButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Save, target: self, action: "rightButtonPressed:")
        self.navigationItem.setRightBarButtonItem(rigthBarButton, animated: true)

    }
    
    override func loadView() {
        
        let contentView = ObjectLibraryView(frame: .zero)
        view = contentView
    }
    
    override func viewWillLayoutSubviews() {
        
        let topLayoutGuide = self.topLayoutGuide
        
        let views = ["topLayoutGuide": topLayoutGuide, "myTextLabel": objectLibraryView.myTextLabel, "myTextField": objectLibraryView.myTextField] as [String:AnyObject]
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-(20)-[myTextLabel]", options: [], metrics: nil, views: views))
        NSLayoutConstraint.activateConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[topLayoutGuide]-(20)-[myTextField]", options: [], metrics: nil, views: views))
        
    }
    
    func buttonPressed(sender: UIButton) {
        print("Button pressed")
    }
    
    func changeColor(sender: UISegmentedControl) {
        print("Segmented selected")
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.backgroundColor = UIColor.greenColor()
        case 1:
            self.view.backgroundColor = UIColor.blueColor()
        case 2:
            self.view.backgroundColor = UIColor.purpleColor()
        default:
            self.view.backgroundColor = UIColor.whiteColor()
        }
    }
    
    func switchUsed(sender: UISwitch) {
        print("Switch changed to \(sender.on)")
    }

    // NavBar
    // Save
    func rightButtonPressed(sender: UIButton) {
        print("right button pressed")
    }
    
    // Cancel
    func leftButtonPressed(sender: UIButton) {
        print("left button pressed")
    }

}

extension ObjectLibraryViewController: UIPickerViewDataSource {
    
    func pickerView(pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusingView view: UIView?) -> UIView {
        let pickerLabel = UILabel()
        pickerLabel.textColor = UIColor.blackColor()
        pickerLabel.text = pickerData[row]
        pickerLabel.font = UIFont(name: "Arial-BoldMT", size: 10) // In this use your custom font
        pickerLabel.textAlignment = NSTextAlignment.Center
        return pickerLabel
    }
    
    func numberOfComponentsInPickerView(colorPicker: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickerData.count
    }
}

extension ObjectLibraryViewController: UIPickerViewDelegate {
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pickerData[row]
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("Picker changed to \(pickerData[row])")
    }
}
