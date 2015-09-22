//
//  CreateAccountViewController.swift
//  MCao_Wk1_Dropbox
//
//  Created by Michie Cao on 9/18/15.
//  Copyright © 2015 Michie Cao. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {

    @IBOutlet weak var createGreat: UIImageView!
    @IBOutlet weak var createGood: UIImageView!
    @IBOutlet weak var createSoso: UIImageView!
    @IBOutlet weak var createWeak: UIImageView!
    
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        createGreat.hidden = true
        createGood.hidden = true
        createSoso.hidden = true
        createWeak.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onWelcome(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func onPasswordChanged(sender: AnyObject) {
        
        print("Password changed")
        
        if passwordField.text?.characters.count > 0{
            createWeak.hidden = false
        }
        if passwordField.text?.characters.count > 3{
            createSoso.hidden = false
        }
        if passwordField.text?.characters.count > 6{
            createGood.hidden = false
        }
        if passwordField.text?.characters.count > 9{
            createGreat.hidden = false
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
