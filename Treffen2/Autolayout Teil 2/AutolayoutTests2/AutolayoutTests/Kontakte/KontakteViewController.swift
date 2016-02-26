//
//  KontakteViewController.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 25.02.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class KontakteViewController: UIViewController {

    var mainView: KontakteView {
        return view as! KontakteView
    }
    
    var dataProvider : KontakteDataProvider?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // table view
        mainView.kontakteList.dataSource = dataProvider
        mainView.kontakteList.delegate = dataProvider
        mainView.kontakteList.registerClass(KontakteTableViewCell.self, forCellReuseIdentifier: "Cell")
        
        // NavBarButtons
        let rigthBarButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.Add, target: self, action: "addContact:")
        self.navigationItem.setRightBarButtonItem(rigthBarButton, animated: true)

    }
    
    override func viewDidAppear(animated: Bool) {
        mainView.kontakteList.reloadData()
    }
    
    override func loadView() {
        
        let contentView = KontakteView(frame: .zero)
        
        // erzeuge den DataProvider
        let kontakteDataProvider: KontakteDataProvider = KontakteDataProvider()
        kontakteDataProvider.caller = self
        dataProvider = kontakteDataProvider
        
        view = contentView
    }
    
    func addContact(sender: UIButton) {
        
        // lade die Detail View
        let details: KontakteDetailsViewController = KontakteDetailsViewController()
        details.title = "Kontaktdetails"
        self.navigationController?.pushViewController(details, animated: true)
    }
    
    func addContactToData(name: String, company: String) {
        dataProvider?.addData(name, company: company)
    }

}
