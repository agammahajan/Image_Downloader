//
//  ViewController.swift
//  Image
//
//  Created by Agam Mahajan on 07/08/16.
//  Copyright © 2016 Agam Mahajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Input: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let TempController = segue.destinationViewController as! SecView
        TempController.temp = Input.text!
    }


}

