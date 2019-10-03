//
//  ViewController.swift
//  AlertMessage
//
//  Created by Arda Kazancı on 3.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var tf_userpasswordagain: UITextField!
    @IBOutlet weak var tf_userpassword: UITextField!
    @IBOutlet weak var tf_username: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btn_signup(_ sender: Any) {
        
        let user_name = tf_username.text
        let user_password = tf_userpassword.text
        let user_password_again = tf_userpasswordagain.text
            
        
        
        print(user_password!)
        print(user_password_again!)
        
        
        
        /**
        1st Parametre : UIAlertController
        2st Parametre : Animasyon var mı yok mu ?
        3st İşlem tamamlandığında ne yapılmalı.
        */
       
        
        
        if ( user_name!.count <= 0
            || user_password!.count <= 0
            || user_password_again!.count <= 0){
                
            
            alertDialog(alertTitle: "Hata", alertMessage: "Lütfen boş alan bırakmayınız.", alertButtonMessage: "Tamam")
            
        }else if (user_password! != user_password_again!){
            
           alertDialog(alertTitle: "Hata", alertMessage: "Parolalar uyuşmuyor.", alertButtonMessage: "Tamam")
            
        }else{
            
           alertDialog(alertTitle: "Tebrikler", alertMessage: "Tüm değerleri doldurdunuz.", alertButtonMessage: "Tamam")
            
        }
        
        
        
        
    }
    
    
    func alertDialog(alertTitle:String,alertMessage:String,alertButtonMessage:String){
        
                    let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertController.Style.alert)
                    
                    let okButton = UIAlertAction(title: alertButtonMessage, style: UIAlertAction.Style.default)
                   
                    alert.addAction(okButton)
                   
                    self.present(alert, animated: true,completion: nil)
        
    }
    
}

