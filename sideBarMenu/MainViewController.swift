//
//  MainViewController.swift
//  sideBarMenu
//
//  Created by Satyam Saluja on 04/10/17.
//  Copyright © 2017 Satyam Saluja. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    var count=0
    @IBAction func ToggleButton(_ sender: Any) {
        self.count=self.count+1
        print("Toggle button was tapped!! Count=\(self.count)")
        NotificationCenter.default.post(name: NSNotification.Name("toggle screen"), object: nil)
        if count%2==0{self.view.isUserInteractionEnabled = true
        }
        else{
            self.view.isUserInteractionEnabled=false
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(showProfile), name: NSNotification.Name("Profile"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showSetting), name: NSNotification.Name("Setting"), object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(showLogout), name: NSNotification.Name("Logout"), object: nil)
        
        

        // Do any additional setup after loading the view.
    }
    @objc func showProfile() {
        performSegue(withIdentifier: "profile", sender: nil)
        self.view.isUserInteractionEnabled=true
        
    }
    @objc func showSetting() {
        performSegue(withIdentifier: "setting", sender: nil)
        self.view.isUserInteractionEnabled=true

    }
    @objc func showLogout() {
        performSegue(withIdentifier: "logout", sender: nil)
        self.view.isUserInteractionEnabled=true

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
