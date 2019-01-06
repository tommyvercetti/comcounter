//
//  ViewController.swift
//  ComCounter
//
//  Created by Andrian Kryk on 6/13/17.
//  Copyright © 2017 Andrian Kryk. All rights reserved.
//

import UIKit


  //https://developer.apple.com/library/content/referencelibrary/GettingStarted/DevelopiOSAppsSwift/WorkWithViewControllers.html#//apple_ref/doc/uid/TP40015214-CH6-SW1 lesson




class ViewController: UIViewController, UITextFieldDelegate {

    //MARK: Properties
    
    @IBOutlet weak var labelNameElectric: UILabel!
    @IBOutlet weak var textFieldElectric: UITextField!
    
    @IBOutlet weak var labelNameColdWater: UILabel!
    @IBOutlet weak var textFieldColdWater: UITextField!
    
    @IBOutlet weak var labelNameHotWater: UILabel!
    @IBOutlet weak var textFieldHotWater: UITextField!
    
    
    @IBOutlet weak var textOutputSend: UITextView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field’s user input through delegate callbacks.
        textFieldElectric.delegate = self
        textFieldColdWater.delegate = self
        textFieldHotWater.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        //this method alows me to hide keyboard by tping "Return/Done" button. How? I don't know =)
        
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textOutputSend.text = textField.text
        
    }
    
    
    
    
    
    //MARK: Actions
    @IBAction func buttonSetDefaultValueElectric(_ sender: UIButton) {
        textFieldElectric.text = "0.00 kW/h"
    }
    @IBAction func buttonSetDefaultValueColdWater(_ sender: UIButton) {
        textFieldColdWater.text = "cold water"
    }
    @IBAction func buttonSetDefaultValueHotWater(_ sender: UIButton) {
        textFieldHotWater.text = "hot water"
    }
    
    
    
    
}

