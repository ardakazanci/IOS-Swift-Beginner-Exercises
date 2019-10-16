//
//  ImageViewController.swift
//  SimpleLandmarkBook
//
//  Created by Arda Kazancı on 16.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var imageNames: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageNames.text = selectedLandmarkName
        imageView.image = selectedLandmarkImage
        
        

        
    }
    

   

}
