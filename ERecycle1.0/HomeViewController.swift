//
//  HomeViewController.swift
//  ERecycle1.0
//
//  Created by sea on 15/11/6.
//  Copyright © 2015年 sea. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    var isLogin:Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        if !isLogin {
            let loginViewController = self.storyboard?.instantiateViewControllerWithIdentifier("loginViewController")
            self.presentViewController(loginViewController!, animated: true, completion: nil)
            isLogin = true
        }
    }

}
