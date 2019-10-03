//
//  ViewController.swift
//  LifecycleMethods
//
//  Created by Arda Kazancı on 3.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    // Ayrıntılı bilgi için IOS UIViewController araştırması yapılabilir.
    
    
    
    // ViewController oluşmadan önce
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewDidLoad() çağırıldı")
    }
    
    // ViewController görünmek üzere
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear() çağırıldı")
    }
    
    // ViewController görüntülendi.
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear() çağırıldı")
    }
    
    // ViewControllerdan çıkıldı ve tekrar gelindiğinde çalışır.
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear() çağırıldı")
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear() çağırıldı")
    }
    
    
    
    


}

