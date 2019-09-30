//
//  ViewController.swift
//  BirdenFazlaEkranIleCalismak
//
//  Created by Arda Kazancı on 29.09.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf: UITextField!
    var tfValues = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // ButtonAction
    @IBAction func oneToSecond(_ sender: Any) {
        
        tfValues = tf.text!
        // sender -> bilgi yollama işlemi için kullanılacak
        // manuel olarak segue işlemi ele alındı.
        performSegue(withIdentifier: "toSecondManuelSegue", sender: nil)
        
        
    }
    
    // Segue olmadan önce ki işlemler burada yapılıyor. Bu metot sayesinde segue den önce ki işlemler yapılıyor.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Özel segue ye göre işlem belirliyoruz.
        if segue.identifier == "toSecondManuelSegue"{
            // gidilen hedef yeri veriyor. segue.destination bize obje veriyor fakat biz bunu ViewController 2 ye cast ederek garantiye alıyoruz.
                    
            // Cast ' in sebebi, segue.destination bir ViewController veriyor fakat Hangi viewController ı vereceğini belirtiyoruz.
            let destinationViewController = segue.destination as! ViewControllerScreen2
            destinationViewController.tf2.text = tfValues
        }
    }
    
}

