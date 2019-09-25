//
//  ViewController.swift
//  ExampleProject1
//
//  Created by Arda Kazancı on 25.09.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    // App ilk gösterildiğinde çalışacak kısım.
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func buttonClick(_ sender: Any) {
        
        imageView.image = UIImage(named: "sample_image_1")
        
    }
    
}

