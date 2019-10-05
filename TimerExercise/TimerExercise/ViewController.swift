//
//  ViewController.swift
//  TimerExercise
//
//  Created by Arda Kazancı on 4.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label_time: UILabel!
    var timer = Timer()
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        counter = 10
        label_time.text = "Time : \(counter)"
        
        /**
         @timeInterval : Kaç Saniye delay olacak
         @target : çalışacak metot hangi ViewController ' ı hedef alacak
         @selector : timer süresince çalışacak metot.
         @userInfo : Kullanıcıya mesaj verielcek mi
         @repeats : Tekrar.
                
         repeats :
         ---------
         Değer doğruysa, zamanlayıcı geçersiz kılınana kadar arka arkaya yeniden zamanlanır. Değer yanlışsa, zamanlayıcı ateşlendikten sonra geçersiz olacaktır.
         */
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunc), userInfo: nil, repeats: true)
        
        
    }
    
    @objc func timerFunc(){
        
        
        label_time.text = "\(counter)"
        counter-=1
        
        if counter == 0{
            timer.invalidate() // timer ' ı bitirir. MainThread dışında bir Thread'te işlem yapar.
            label_time.text = "Time's Over"
            
        }
        
    }
    
    
    
    
    
}

