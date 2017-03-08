//
//  ViewController.swift
//  iOSRollBar
//
//  Created by Lu on 3/7/17.
//  Copyright © 2017 Snap!Raise. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
  
  @IBAction func triggerDebug()
  {
    let message = "Debug Occurred!"
    Rollbar.debug(withMessage: message)
  }//eom
  
  @IBAction func triggerInfo()
  {
    let message = "Info Occurred!"
    
    // Logs at level "info".
    // Variants at "debug", "info", "warning", "error", and "critical" all exist.
    Rollbar.info(withMessage: message)
  }//eom
  
  @IBAction func triggerCritical()
  {
    let message = "Critical Occurred!"
    let data:[AnyHashable:Any] = [ "endpoint":"user/id/5", "result":"invalid token"]
    
    // Log a critical, with some additional key-value data
    Rollbar.critical(withMessage: message, data: data)
  }//eom
  
  @IBAction func triggerLevel()
  {
    let data:[AnyHashable:Any] = [ "endpoint":"user/id/5", "result":"invalid token"]
    
    // log at a named level
    Rollbar.log(withLevel: "warning",
                message: "simple warning log message",
                data: data)
  }//eom
  

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

