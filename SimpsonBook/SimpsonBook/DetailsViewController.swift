//
//  DetailsViewController.swift
//  SimpsonBook
//
//  Created by Arda Kazancı on 23.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var detailsImageView: UIImageView!
    
    @IBOutlet weak var detailsName: UILabel!
    
    @IBOutlet weak var detailsJob: UILabel!
    
    var selectionSimpsons : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
        detailsName.text = selectionSimpsons?.name
        detailsJob.text = selectionSimpsons?.job
        detailsImageView.image = selectionSimpsons?.image
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
