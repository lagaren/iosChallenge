//
//  ViewController.swift
//  iOS Challenge
//
//  Created by Joe Fernandez on 10/2/18.
//  Copyright © 2018 Joe Fernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloWorldButton: UIButton?
    @IBOutlet weak var vanishButton: UIButton?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func showMessage(){
        //Hello world code from tutorial video
        let alertController = UIAlertController(title: "Welcome to My First App", message: "Hello World",preferredStyle:UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler:nil))
        self.present(alertController, animated: true, completion: nil)
    }
    
    
    @IBAction func hideHelloWorld(__sender: UIButton){
        //Checks existence of buttons and unwraps them via binding
        if let helloWorldButton = helloWorldButton, let vanishButton = vanishButton {
            //Hides/reveals the red button
            helloWorldButton.isHidden = !(helloWorldButton.isHidden)
            
            //Changes label of the green button
            if (helloWorldButton.isHidden) {
                vanishButton.setTitle("Now you don't", for: [])
            } else {
                vanishButton.setTitle("Now you see him", for: [])
            }
        }
    }

}

