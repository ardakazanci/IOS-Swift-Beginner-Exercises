//
//  ViewController.swift
//  CatchPhp
//
//  Created by Arda Kazancı on 6.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lb_time: UILabel!
    @IBOutlet weak var lb_point: UILabel!
    @IBOutlet weak var lb_message: UILabel!
    

    var pointValues = 0;
    var timer:Timer?
    var timerCountDown:Timer?
    var countDown = 5
   
    @IBOutlet weak var img_12: UIImageView!
    @IBOutlet weak var img_11: UIImageView!
    @IBOutlet weak var img_10: UIImageView!
    @IBOutlet weak var img_9: UIImageView!
    @IBOutlet weak var img_8: UIImageView!
    @IBOutlet weak var img_7: UIImageView!
    @IBOutlet weak var img_6: UIImageView!
    @IBOutlet weak var img_5: UIImageView!
    @IBOutlet weak var img_4: UIImageView!
    @IBOutlet weak var img_3: UIImageView!
    @IBOutlet weak var img_2: UIImageView!
    @IBOutlet weak var img_1: UIImageView!
    
    
    var imageList: [UIImageView] = []
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
            
        lb_message.text = " "
        lb_point.text =  "0"
        lb_time.text = "60"
        
        
            let images1Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
            let images2Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
            let images3Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
            let images4Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
            let images5Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
            let images6Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
            let images7Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
            let images8Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
            let images9Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
            let images10Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
            let images11Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
            let images12Gesture = UITapGestureRecognizer(target: self, action: #selector(imageTapped(gesture:)))
          
        
        
        
        // Tüm koordinatlarda bulunan imageların gizlenmesi.
        img_1.isHidden = true
        img_1.isUserInteractionEnabled = true
        img_2.isHidden = true
        img_2.isUserInteractionEnabled = true
        img_3.isHidden = true
        img_3.isUserInteractionEnabled = true
        img_4.isHidden = true
        img_4.isUserInteractionEnabled = true
        img_5.isHidden = true
        img_5.isUserInteractionEnabled = true
        img_6.isHidden = true
        img_6.isUserInteractionEnabled = true
        img_7.isHidden = true
        img_7.isUserInteractionEnabled = true
        img_8.isHidden = true
        img_8.isUserInteractionEnabled = true
        img_9.isHidden = true
        img_9.isUserInteractionEnabled = true
        img_10.isHidden = true
        img_10.isUserInteractionEnabled = true
        img_11.isHidden = true
        img_11.isUserInteractionEnabled = true
        img_12.isHidden = true
        img_12.isUserInteractionEnabled = true
        
        img_1.addGestureRecognizer(images1Gesture)
        img_2.addGestureRecognizer(images2Gesture)
        img_3.addGestureRecognizer(images3Gesture)
        img_4.addGestureRecognizer(images4Gesture)
        img_5.addGestureRecognizer(images5Gesture)
        img_6.addGestureRecognizer(images6Gesture)
        img_7.addGestureRecognizer(images7Gesture)
        img_8.addGestureRecognizer(images8Gesture)
        img_9.addGestureRecognizer(images9Gesture)
        img_10.addGestureRecognizer(images10Gesture)
        img_11.addGestureRecognizer(images11Gesture)
        img_12.addGestureRecognizer(images12Gesture)
        
        // Tüm imageların listesi.
        imageList = [img_1,img_2,img_3,img_4,img_5,img_6,img_7,img_8,img_9,img_10,img_11,img_12]
            
        
    }
    
    @objc func timerFinished(){
        
        countDown -= 1
        lb_time.text = " : \(countDown)"
        
        if(countDown <= 0){
                
            lb_point.text = "Point : \(pointValues)"
            lb_message.text = "Finish Game"
            
            timerCountDown?.invalidate()
            timerCountDown = nil
            timer?.invalidate()
            timer = nil
            
            
            img_1.isHidden = true
  
            img_2.isHidden = true
           
            img_3.isHidden = true
           
            img_4.isHidden = true
           
            img_5.isHidden = true
           
            img_6.isHidden = true
            
            img_7.isHidden = true
            
            img_8.isHidden = true
            
            img_9.isHidden = true
           
            img_10.isHidden = true
           
            img_11.isHidden = true
           
            img_12.isHidden = true
           
            
            
            
            
            
        }
        
    }
    
    
    @objc func imageTapped(gesture:UITapGestureRecognizer){
        
        pointValues = pointValues + 1
        lb_point.text = "\(pointValues)"
        
      
    }
    
    
    // reset butonuna tıklandığında çalışacak metod.
    
    @IBAction func btn_reset(_ sender: Any) {
        // tekrar kontrolü
        lb_time.text = "0"
        lb_point.text = "0"
        lb_message.text = ""
        countDown = 0
             pointValues = 0
                   timerCountDown?.invalidate()
                   timerCountDown = nil
                   timer?.invalidate()
                   timer = nil
        
        
        
        
    }
    
    
    
    
    
    // btn_start tıklanması sonucu oyunun başlaması.
    @IBAction func btn_start(_ sender: Any) {
        
        countDown = 60
        
        timerCountDown = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(timerFinished), userInfo: nil, repeats: true)
         
        // her 1 saniye de yeni bir image ın gösterilmesi.
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(randomImageVisible), userInfo: nil, repeats: true)
       
      
        
        
    }
    
    
    
    
    // rastgele image ın gösterilmesi.
    @objc func randomImageVisible(){
            
        // rastgele index numarası 0 - 12
        let imageIndex = Int.random(in: 0..<12) // 0
       
       
        // döngüye alıp gelen index dışında kileri gizleyeceğiz.
        // eğer gelen index değeri, dizide bulunan index e eşit ise göster, diğerlerini gizle.
        var i = 0
        while i < 12 {
            if(imageIndex == i){
                imageList[i].isHidden = false
               
            }else{
                   imageList[i].isHidden = true
            }
            i = i + 1
        }
        
    }
    
    
  
    
    
    
    
    
    

}

