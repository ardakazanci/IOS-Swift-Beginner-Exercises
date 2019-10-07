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
        
        imageList = [img_1,img_2,img_3,img_4,img_5,img_6,img_7,img_8,img_9,img_10,img_11,img_12]

        
    }
    
    
    
    @IBAction func btn_start(_ sender: Any) {
        
        _ = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(randomImageVisible), userInfo: nil, repeats: true)
        
    }
    
    @objc func randomImageVisible(){
        
        let imageIndex = Int.random(in: 0..<12)
        var imageIndexControl = imageIndex
        imageList[imageIndex].isHidden = false
    }
    

}

