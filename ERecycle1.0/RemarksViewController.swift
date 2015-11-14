//
//  RemarksViewController.swift
//  ERecycle1.0
//
//  Created by sea on 15/11/7.
//  Copyright © 2015年 sea. All rights reserved.
//

import UIKit

class RemarksViewController: UIViewController, UITextViewDelegate {

    @IBOutlet weak var placeHolderLabel: UILabel!
    @IBOutlet weak var wordNumer: UILabel!
    @IBOutlet weak var remarksTextView: UITextView!
    let REMARKSWORDMAX = 120
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.automaticallyAdjustsScrollViewInsets = false;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textViewDidChange(textView: UITextView) {
        if textView.text.isEmpty {
            placeHolderLabel.hidden = false
        } else {
            placeHolderLabel.hidden = true
            wordNumer.text = "\(REMARKSWORDMAX - textView.text.characters.count)"
        }
    }
    
    @IBAction func downBarButtonPressed(sender: UIBarButtonItem) {
        self.view.endEditing(true)
    }

    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
