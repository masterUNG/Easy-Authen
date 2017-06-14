//
//  ViewController.swift
//  Easy Authen
//
//  Created by Teacher on 6/13/2560 BE.
//  Copyright © 2560 SNRU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Implicit
    var strUser: String?
    var strPassword: String?
    let dicUser = ["master": "1234", "doramon": "5678", "nobita": "1234"]
    
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    
    @IBAction func loginButton(_ sender: Any) {
        
        
        
        //Get Value From TextField
        strUser = userTextField.text
        strPassword = passwordTextField.text
        
        //Show User & Pass on Console
        print("User ==> \(strUser!)")
        print("Password ==> \(strPassword!)")
        
        //Find Count String
        let intUser = strUser?.characters.count
        let intPass = strPassword?.characters.count
        
        print("intUser ==> \(intUser!)")
        print("intPass ==> \(intPass!)")
        
        //Call checkSpace
        if checkSpace(myString: strUser!) && checkSpace(myString: strPassword!) {
            
            //No Space
            print("No Space")
            showMessage(strMessage: "")
            checkUserAndPass(strUser: strUser!, strPassword: strPassword!)
            
        }   else {
            
            //Have Space
            print("Have Space")
            showMessage(strMessage: "Please Fill Every Blank")
        }
        
        
        
        
    }   // loginButton
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }   // Main Method
    
    func checkUserAndPass(strUser: String, strPassword: String) -> Void {
        
        //Check User
        if let testUser = dicUser[strUser] {
            
            print("testUser ==> \(testUser)")
            if strPassword == testUser {
                //Password True
                showMessage(strMessage: "Welcome to SNRU")
            }else {
                //Password False
                showMessage(strMessage: "Please Try Again Password False")
            }
            
        }   else {
            print("testUser nil")
            showMessage(strMessage: "No " + strUser + " in my Database")
        }
        
        
    }
    
    
    
    func showMessage(strMessage: String) -> Void {
        messageLabel.text = strMessage
    }
    
    
    
    func checkSpace(myString: String) -> Bool {
        let intString = myString.characters.count
        var result: Bool = true
        
        if intString == 0 {
            //Have Space
            result = false
        }
        
        
        
        return result
        
    }
    
    
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   // didRecive
    
    
    


}   // Main Class

