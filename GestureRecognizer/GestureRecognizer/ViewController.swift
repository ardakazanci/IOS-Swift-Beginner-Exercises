//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Arda Kazancı on 4.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imv_photo1: UIImageView!
    @IBOutlet weak var lbl_name1: UILabel!
    var fileName : String = "jame"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imv_photo1.isUserInteractionEnabled = true
        /**
                        1st. param : İçinde bulunduğumuz ViewController sınıfı içerisinde ki bir fonksiyona aksiyon olarak ulaşacağımız için self kullanırız.
                        2st param : action için oluşturulan method.
         */
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changeImageViewPick))
        imv_photo1.addGestureRecognizer(gestureRecognizer)
        
        
    }
    
    @objc func changeImageViewPick(){
            
        
        
        if(fileName == "jame"){
                print("jame idi")
                imv_photo1.image = UIImage(named: "larce")
                lbl_name1.text = "Fotoğraf 1"
                fileName = "larce"
            
        }else if(fileName == "larce"){
                print("larce idi")
                imv_photo1.image = UIImage(named: "jame")
                lbl_name1.text = "Fotoğraf 2"
                fileName = "jame"
        }
        
            
        
        
        
        
        
        
    }

}

