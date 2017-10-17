//
//  ViewController.swift
//  sideBarMenu
//
//  Created by Satyam Saluja on 04/10/17.
//  Copyright © 2017 Satyam Saluja. All rights reserved.
//

import UIKit

class ContainerViewController: UIViewController {
    
    var sideMenuOpened=false

    @IBOutlet weak var myToggleConstraint: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(toggleSidemMenu), name: NSNotification.Name("toggle screen"), object: nil)
        // Do any additional setup after loading the view, typically from a nib.
    }
    
     @objc func toggleSidemMenu() {
        if sideMenuOpened{
            myToggleConstraint.constant = -240
            sideMenuOpened=false
           
        }
        else{
            myToggleConstraint.constant = 0
            sideMenuOpened=true
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }


}

