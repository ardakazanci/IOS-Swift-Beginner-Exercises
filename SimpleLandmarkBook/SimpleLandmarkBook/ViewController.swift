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

