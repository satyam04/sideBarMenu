//
//  SideTableViewController.swift
//  sideBarMenu
//
//  Created by Satyam Saluja on 04/10/17.
//  Copyright © 2017 Satyam Saluja. All rights reserved.
//

import UIKit

class SideTableViewController: UITableViewController {
    @IBOutlet var mySideTableView: UITableView!
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
        NotificationCenter.default.post(name: NSNotification.Name("toggle screen"), object: nil)
        switch indexPath.row {
        case 0: NotificationCenter.default.post(name: NSNotification.Name("Profile"), object: nil)
        case 1: NotificationCenter.default.post(name: NSNotification.Name("Setting"), object: nil)
        case 2: NotificationCenter.default.post(name: NSNotification.Name("Logout"), object: nil)
        default: break
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }


}
