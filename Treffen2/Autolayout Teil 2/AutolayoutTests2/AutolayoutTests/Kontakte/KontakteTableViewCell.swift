//
//  KontakteTableViewCell.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 25.02.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class KontakteTableViewCell: UITableViewCell {

    var myLabel1: UILabel!
    var myLabel2: UILabel!
    //var myButton1 : UIButton!
    //var myButton2 : UIButton!
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        myLabel1 = UILabel()
        myLabel1.frame = CGRectMake(0,0,0,0)
        myLabel1.textColor = UIColor.blackColor()
        myLabel1.textAlignment = .Left
        myLabel1.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(myLabel1)
        
        myLabel2 = UILabel()
        myLabel2.frame = CGRectMake(0,0,0,0)
        myLabel2.textColor = UIColor.blackColor()
        myLabel1.textAlignment = .Right
        myLabel2.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(myLabel2)
        
        //        myButton1 = UIButton()
        //        myButton1.frame = CGRectMake(0,0,0,0)
        //        myButton1.setImage(UIImage(named: "buttonA.png"), forState: UIControlState.Normal)
        //        contentView.addSubview(myButton1)
        //
        //        myButton2 = UIButton()
        //        myButton2.frame = CGRectMake(0,0,0,0)
        //        myButton2.setImage(UIImage(named: "buttonB.png"), forState: UIControlState.Normal)
        //        contentView.addSubview(myButton2)
        
        let views = ["myLabel1": myLabel1, "myLabel2": myLabel2]
        var layoutConstraints = [NSLayoutConstraint]()
        
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[myLabel1]-|", options: [NSLayoutFormatOptions.AlignAllLeft], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|[myLabel1]|", options: [], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("H:|-[myLabel2]-|", options: [NSLayoutFormatOptions.AlignAllRight], metrics: nil, views: views)
        layoutConstraints += NSLayoutConstraint.constraintsWithVisualFormat("V:|[myLabel2]|", options: [], metrics: nil, views: views)
        NSLayoutConstraint.activateConstraints(layoutConstraints)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
