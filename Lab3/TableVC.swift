//
//  TableVC.swift
//  Lab3
//
//  Created by Navreet Singh on 2020-02-18.
//  Copyright © 2020 Navreet Singh. All rights reserved.
//

import Foundation
import UIKit

class TableVC: UITableViewController
{
    var cell: TableViewCell?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        cell.textLabel?.text = "Name"
        
        //let image = UIImage(named: "group")
        //cell.imageView?.image = image

        
        return cell
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}
