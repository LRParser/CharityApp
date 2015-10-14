//
//  ViewController.swift
//  Charity
//
//  Created by Caroll on 10/14/15.
//  Copyright (c) 2015 Caroll. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
     
    func donateMoney(amount: Int)
    {
        let customURL = NSURL(string:"com-innerfence-ccterminal://charge/1.0.0/?amount=\(amount)")
        
        if UIApplication.sharedApplication().canOpenURL(customURL!) {
            UIApplication.sharedApplication().openURL(customURL!)
        }
        else
        {
            let alert: UIAlertView = UIAlertView(title: "URL error", message: "Credit Card Terminal is not installed", delegate: nil, cancelButtonTitle: "OK")
            alert.show()
        }
    }


    @IBAction func donate250(sender: AnyObject) {
        
        let chargeRequest: IFChargeRequest = IFChargeRequest()
        
        chargeRequest.amount = "250.00";
        chargeRequest.setReturnURL("com-swifttest-Charity://", withExtraParams: nil);
        
        chargeRequest.submit()
    }
    
    @IBAction func donate500(sender: AnyObject) {
        
        let chargeRequest: IFChargeRequest = IFChargeRequest()
        
        chargeRequest.amount = "500.00";
        chargeRequest.setReturnURL("com-swifttest-Charity://", withExtraParams: nil);
        
        chargeRequest.submit()

    }
    
    @IBAction func donate100(sender: AnyObject) {
        let chargeRequest: IFChargeRequest = IFChargeRequest()
        
        chargeRequest.amount = "100.00";
        chargeRequest.setReturnURL("com-swifttest-Charity://", withExtraParams: nil);
        
        chargeRequest.submit()
    }
    
    @IBAction func donate25(sender: AnyObject) {
        
        let chargeRequest: IFChargeRequest = IFChargeRequest()
        
        chargeRequest.amount = "25.00";
        chargeRequest.setReturnURL("com-swifttest-Charity://", withExtraParams: nil);
        
        chargeRequest.submit()
    }
    @IBAction func donate5000(sender: AnyObject) {
        let chargeRequest: IFChargeRequest = IFChargeRequest()
        
        chargeRequest.amount = "5000.00";
        chargeRequest.setReturnURL("com-swifttest-Charity://", withExtraParams: nil);
        
        chargeRequest.submit()
    }
}

