//
//  AddToQueueViewController.swift
//  hwy7
//
//  Created by Cindy Zhao on 2015-11-25.
//  Copyright © 2015 Cindy Zhao. All rights reserved.
//

import UIKit

class AddToQueueViewController: UIViewController {
    @IBOutlet weak var name_ol: UITextField!
    @IBOutlet weak var numPeople_ol: UITextField!
    @IBOutlet weak var phone_ol: UITextField!

    override func viewDidLoad() {

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func submit(sender: AnyObject) {
        if (numPeople_ol.text! == "" && Int(numPeople_ol.text!) <= 0){
            let errorAlert = UIAlertController(title: "Error", message: "number of people cannot be empty or 0", preferredStyle: UIAlertControllerStyle.Alert)
            errorAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
            }))
            presentViewController(errorAlert, animated: true, completion: nil)
            return
        }
        
        let name = (name_ol.text != nil) ? name_ol.text! : ""
        let phone = (phone_ol.text != "") ? Int(phone_ol.text!)! : 0
        
        let confirmAlert = UIAlertController(title: "Add Customer", message: "Push confirm to add Customer \n" +
            "Name  : \(name)\n" +
            "Phone : \(phone)\n" +
            "Number of people : \(numPeople_ol.text!)", preferredStyle: UIAlertControllerStyle.Alert)
        
        confirmAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { (action: UIAlertAction!) in
            let customersQ = customersQList[Int(self.numPeople_ol.text!)! - 1]
            let customer = Customer(name_: self.name_ol.text!, phone_: phone)
            customersQ.addCustomer(customer)
            
            self.performSegueWithIdentifier("AddToQ2Queue_sg", sender: nil)
        }))

        confirmAlert.addAction(UIAlertAction(title: "Cancel", style: .Default, handler: { (action: UIAlertAction!) in
            
        }))
        
        presentViewController(confirmAlert, animated: true, completion: nil)
        

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

}
