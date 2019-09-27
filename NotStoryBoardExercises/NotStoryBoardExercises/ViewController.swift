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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        myLabel.text = "My Label"
        myLabel.textAlignment = .center
        
        // EKRANDA GÖSTERİLMESİ İÇİN
        myLabel.frame = CGRect.init(x: 100, y: 100, width: 100, height: 100)
        // Oluşturduğumuz label ' ı sürükle bırak yaptığımız gibi view ' a atıyoruz.
        view.addSubview(myLabel)
        
        // Tüm ekrana uyumlu olması için. Ekranın width ve height değerini alarak buna göre işlem yapabilmemiz gerek.
        
        
    }


}

