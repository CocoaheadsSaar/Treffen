//
//  KontakteDataProvider.swift
//  AutolayoutTests
//
//  Created by Markus Schmitt on 25.02.16.
//  Copyright © 2016 Insecom - Markus Schmitt. All rights reserved.
//

import UIKit

class KontakteDataProvider: NSObject, UITableViewDataSource, UITableViewDelegate {

    var cellIdentifier = "Cell"
    
    var caller: KontakteViewController?
    
    // Daten der Cells
    var data = [
        ["Name 01", "Unternehmen 1"],
        ["Name 02", "Unternehmen 1"],
        ["Name 03", "Unternehmen 1"],
        ["Name 04", "Unternehmen 2"],
        ["Name 05", "Unternehmen 2"],
        ["Name 06", "Unternehmen 2"],
        ["Name 07", "Unternehmen 3"],
        ["Name 08", "Unternehmen 3"],
        ["Name 09", "Unternehmen 3"],
        ["Name 10", "Unternehmen 4"]
    ]
    
    func addData(name: String, company: String) {
        data.append([name, company])
    }
    
    // die Custom Cell muss als gültige Zelle registriert werden
    func registerCellsForTableView(tableView: UITableView) {
        tableView.registerClass(KontakteTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    // Anzahl der Zellen, hier fest auf 10, was später geändert wird
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    // Daten der Zelle, hier quasi statisch
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellIdentifier, forIndexPath: indexPath) as! KontakteTableViewCell
        
        cell.myLabel1.text = data[indexPath.row][1]
        cell.myLabel2.text = data[indexPath.row][0]
        
        return cell
    }
    
    // Methode beim Auswählen
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("Cell #\(indexPath.row) ausgewählt")
        // lade die Detail View
        let details: KontakteDetailsViewController = KontakteDetailsViewController()
        details.setName = data[indexPath.row][0]
        details.setCompany = data[indexPath.row][1]
        details.title = "Kontaktdetails"
        caller!.navigationController?.pushViewController(details, animated: true)

    }
    
    // Höhe setzen
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 65
    }
}
