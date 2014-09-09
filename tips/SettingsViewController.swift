//
//  SettingsViewController.swift
//  tips
//
//  Created by Lie Yang on 9/8/14.
//  Copyright (c) 2014 Lie Yang. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTipPercEdit: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var defaults = NSUserDefaults.standardUserDefaults()
        var intValue = defaults.integerForKey("defaul_percentage")
        
        defaultTipPercEdit.text = "\(intValue)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func onClickClose(sender: UIButton) {
        var defaults = NSUserDefaults.standardUserDefaults()
        var defaultPercentage = (defaultTipPercEdit.text as NSString).integerValue
        defaults.setInteger(defaultPercentage, forKey: "defaul_percentage")
        defaults.synchronize()
        
        dismissViewControllerAnimated(true, completion: nil)
    }
}
