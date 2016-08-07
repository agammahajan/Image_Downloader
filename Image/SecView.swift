//
//  SecView.swift
//  Image
//
//  Created by Agam Mahajan on 07/08/16.
//  Copyright © 2016 Agam Mahajan. All rights reserved.
//

import Foundation
import UIKit

class SecView: UIViewController {
    
    @IBOutlet var Output: UIImageView!
    
    var temp = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let url = NSURL(string: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSvWSL5zAw0IXDeQ0TwstSbCKAD7ylJY7xYZD5gLAYqK6Mz-cn6MQ")
        let url = NSURL(string: temp)
        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) { (data, response, error) -> Void in
            if error != nil {
                print(error)
            }
            else {
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    if let image = UIImage(data: data!){
                        self.Output.image = image
                    }
                })
            }
            
        }
        task.resume()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
