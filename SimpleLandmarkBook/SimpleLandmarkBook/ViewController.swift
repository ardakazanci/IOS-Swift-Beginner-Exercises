//
//  ViewController.swift
//  SimpleLandmarkBook
//
//  Created by Arda Kazancı on 15.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    
   
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Aşağıda ki 2 fonksiyonun çalışması için gerekmektedir.
        tableView.delegate = self
        tableView.dataSource = self
        
        // Names List.
        var landmarkNames = [String]()
         landmarkNames.append("Akropolis")
         landmarkNames.append("Angkor")
         landmarkNames.append("Çin Seddi")
         landmarkNames.append("Giza Pramitleri")
         landmarkNames.append("Kolezyum")
         landmarkNames.append("Macchu Picchu")
         landmarkNames.append("Teotihuacan")
        
        // Images List.
        var landmarksImages = [UIImage]()
         landmarksImages.append(UIImage(named: "akropolis")!)
         landmarksImages.append(UIImage(named: "angkor")!)
         landmarksImages.append(UIImage(named: "cin_seddi")!)
         landmarksImages.append(UIImage(named: "giza_pramitleri")!)
         landmarksImages.append(UIImage(named: "kolezyum")!)
         landmarksImages.append(UIImage(named: "machu_piccu")!)
         landmarksImages.append(UIImage(named: "Teotihuacan")!)
        
        
    }
    
    
    
    /** Aşağıda ki fonksiyonu burada kullanma hakkına sahip oluyoruz.  **/
    
    // Kaç tane satır olacak ?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 10
       }
    // Göstereceğimiz değerler neler olacak ? ve Nasıl gösterilcek ? 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
        let cell = UITableViewCell()
        cell.textLabel?.text = "Test"
        
        return cell
        
       }


}

