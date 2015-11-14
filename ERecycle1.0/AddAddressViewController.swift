//
//  AddAddressViewController.swift
//  ERecycle1.0
//
//  Created by sea on 15/11/7.
//  Copyright © 2015年 sea. All rights reserved.
//

import UIKit

class AddAddressViewController: UIViewController {

    @IBOutlet weak var editView: UIView!
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var widelyAddress: UITextField!
    @IBOutlet weak var detailOfAddress: UITextField!
    @IBOutlet var textFieldArray: [UITextField]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    func keyboardWillShow(notification:NSNotification) {
        for index in textFieldArray {
            if index.isFirstResponder() {
                
                let userInfo:NSDictionary = notification.userInfo!
                let keyboardInfo = userInfo.objectForKey(UIKeyboardFrameEndUserInfoKey)
                let keyboardHeight = keyboardInfo?.CGRectValue.size.height
                let offset = (editView.frame.origin.y + index.frame.origin.y + index.frame.size.height + 6) - (self.view.frame.size.height - keyboardHeight!)
                let duration = userInfo.objectForKey(UIKeyboardAnimationDurationUserInfoKey)?.doubleValue
                if offset > 0 {
                    UIView.animateWithDuration(duration!, animations: { () -> Void in
                        self.view.frame = CGRectMake(0.0, -offset, self.view.frame.width, self.view.frame.height)
                    })
                }
                else {
                    self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
                }
            }
        }
    }
    
    func keyboardWillHide(notification:NSNotification) {
        let userInfo:NSDictionary = notification.userInfo!
        let duration = userInfo.objectForKey(UIKeyboardAnimationDurationUserInfoKey)?.doubleValue
        UIView.animateWithDuration(duration!) { () -> Void in
            self.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)
        }
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
