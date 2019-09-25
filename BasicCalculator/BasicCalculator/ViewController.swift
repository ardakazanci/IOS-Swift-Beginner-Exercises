//
//  ViewController.swift
//  BasicCalculator
//
//  Created by Arda Kazancı on 25.09.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtNumber1: UITextField!
    @IBOutlet weak var txtNumber2: UITextField!
    @IBOutlet weak var lblResult: UILabel!
    var number1 : String?
    var number2 : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func sumButton(_ sender: Any) {

        
        if(txtNumber1.text == "" || txtNumber2.text == ""){
            print("Number 1 is Empty or Number 2")
        }else{
            
            if let number1 = Int(txtNumber1.text!){
                if let number2 = Int(txtNumber2.text!){
                    lblResult.text = String(number1 + number2)
                }else{
                    print("Number 2 yi lütfen sayı giriniz.")
                }
            }else{
                 print("Number 1 i lütfen sayı giriniz.")
            }
            
            
            
        }
              
        
        
       
       
        
    }
    
    @IBAction func subtractionButton(_ sender: Any) {
        
      if(txtNumber1.text == "" || txtNumber2.text == ""){
            print("Number 1 is Empty or Number 2")
        }else{
            
            if let number1 = Int(txtNumber1.text!){
                if let number2 = Int(txtNumber2.text!){
                    lblResult.text = String(number1 - number2)
                }else{
                    print("Number 2 yi lütfen sayı giriniz.")
                }
            }else{
                 print("Number 1 i lütfen sayı giriniz.")
            }
            
            
            
        }
        
        
        
    }
    
    @IBAction func impactButton(_ sender: Any) {
        
        if(txtNumber1.text == "" || txtNumber2.text == ""){
            print("Number 1 is Empty or Number 2")
        }else{
            
            if let number1 = Int(txtNumber1.text!){
                if let number2 = Int(txtNumber2.text!){
                    lblResult.text = String(number1 * number2)
                }else{
                    print("Number 2 yi lütfen sayı giriniz.")
                }
            }else{
                 print("Number 1 i lütfen sayı giriniz.")
            }
            
            
            
        }
        
       
    }
    
    @IBAction func compartmentButton(_ sender: Any) {
        
        if(txtNumber1.text == "" || txtNumber2.text == ""){
            print("Number 1 is Empty or Number 2")
        }else{
            
            if let number1 = Int(txtNumber1.text!){
                if let number2 = Int(txtNumber2.text!){
                    lblResult.text = String(number1 / number2)
                }else{
                    print("Number 2 yi lütfen sayı giriniz.")
                }
            }else{
                 print("Number 1 i lütfen sayı giriniz.")
            }
            
            
            
        }
       
    }
    
    
    @IBAction func remainingButton(_ sender: Any) {
        
       if(txtNumber1.text == "" || txtNumber2.text == ""){
            print("Number 1 is Empty or Number 2")
        }else{
            
            if let number1 = Int(txtNumber1.text!){
                if let number2 = Int(txtNumber2.text!){
                    lblResult.text = String(number1 % number2)
                }else{
                    print("Number 2 yi lütfen sayı giriniz.")
                }
            }else{
                 print("Number 1 i lütfen sayı giriniz.")
            }
            
            
            
        }
        
        
        
    }
    
    
    
    

}

