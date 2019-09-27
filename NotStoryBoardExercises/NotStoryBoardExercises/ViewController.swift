//
//  ViewController.swift
//  NotStoryBoardExercises
//
//  Created by Arda Kazancı on 27.09.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    let myLabel  = UILabel()
    let myButton = UIButton()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
            
        
       
        
        
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.brown, for: UIControl.State.normal)
        myButton.frame = CGRect(x: 0.5 - 100, y: height * 0.6, width: 200, height: 100)
               
        
        
        myLabel.text = "My Label"
        myLabel.textAlignment = .center
        
        // EKRANDA GÖSTERİLMESİ İÇİN
        myLabel.frame = CGRect.init(x: width / 2 * width * 0.8 / 2, y: height * 0.5 - 50 / 2, width: width * 0.8, height: 50)
        // Oluşturduğumuz label ' ı sürükle bırak yaptığımız gibi view ' a atıyoruz.
        view.addSubview(myLabel)
        view.addSubview(myButton)
        
        // Tüm ekrana uyumlu olması için. Ekranın width ve height değerini alarak buna göre işlem yapabilmemiz gerek.
        /**
                 
         self -> ViewController ' ın kendisi.
         
         */
        
        
        /*
         self : Butona tıklandığında nereden aksiyon çağıracağız ın cevabıdır ViewController - > Self içinde bulunduğu sınıf.
         action : Çağırılacak aksiyon hangisi ? ViewController sınıfı içerisinde yer alan method.
         for : Action nasıl çağırılacak ın cevabıdır For kısmı. Meseal tıklandığında touchUpInside
         */
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
    }

    
   @objc func myAction()
    {
    
        print("Function")
        
    }

}

