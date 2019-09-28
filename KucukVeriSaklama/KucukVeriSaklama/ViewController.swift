//
//  ViewController.swift
//  KucukVeriSaklama
//
//  Created by Arda Kazancı on 28.09.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var lbSavedData: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Kaydedilmiş veriyi alıyoruz. Any? object veriyor. Herhangi veriyi obje olarak alıyor. Opsyionel olarak veriyor. Kayıt edilmemişte olabilir.
        let savedName = UserDefaults.standard.object(forKey: "name")
        
        
        // as? -> Yapabilirsen String e cast et.
        // as! -> Kesin String e çevirebilirsin.
        //lbSavedData.text = savedName as? String -> İF Letten daha güvensiz.
        
        if let storedName = savedName as? String{
            lbSavedData.text = storedName
        }
        
        
        
    }
    
    @IBAction func btnDelete(_ sender: Any) {
        
         let savedName = UserDefaults.standard.object(forKey: "name")
        // "" -> Boş -> Aslında bir değer vardır nil değildir anlamına gelir. Nil'den farklıdır.
        // nil -> İnitilaize edilmemiştir.
        // Birşey nil değilse değeri vardır anlamına gelir.
        
        if (savedName as? String) != nil{
            UserDefaults.standard.removeObject(forKey: "name")
        }
        
        
        
    }
    
    @IBAction func btnSave(_ sender: Any) {
        
        // Eğer edittext boş gönderilirse gelen veri "" ' dir.
        
        // Verileri kaydetmek için (Küçük) UserDefaults sınıfı kullanılır.
        
        // UserDefaults.standart diyerek tüm uygulama boyunca aynı obje kullanılır.
        
        // Scope sınırı olmaz.
        
        let name = tfName.text
        if(name != nil){
            
            lbSavedData.text = "İlgili Değer = \(name)"
            UserDefaults.standard.set(lbSavedData.text, forKey: "name")
            // Eskiden UserDefaults.standart.syncronized kullanılırdı.
            
            
        }else{
            lbSavedData.text = "Lütfen Değer Giriniz"
        }
        
    }
    

}

