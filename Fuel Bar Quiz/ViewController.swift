//
//  ViewController.swift
//  Fuel Bar Quiz
//
//  Created by Sherman Shi on 2/5/19.
//  Copyright © 2019 Sherman Shi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var codeInput: UITextField!
    
    @IBAction func submitButton(_ sender: Any) {
        
        if codeInput.text == "" {
            
            nameLabel.text = "Hey! Wrong code!"
            
        } else if codeInput.text != "flagship" {
            
            nameLabel.text = "Hey! Wrong code!"
            
        } else {
            
            UserDefaults.standard.set(nameInput.text, forKey: "name")
            
            let nameObject = UserDefaults.standard.object(forKey: "name")
            
            if let name = nameObject as? String {
                
                nameLabel.text = "Welcome \(name)!"
                
            }
            
        }
        
    }
    
    /*
    
    DispatchQueue.main.asyncAfter(deadline: .now() + 10.0, execute: {
    self.performSegue(withIdentifier: "segue", sender: self )
    })
 
     */
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        nameInput.resignFirstResponder()
        
        return true
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    


}

