//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Arda Kazancı on 23.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
    
    
   
    

    @IBOutlet weak var mainTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mainTableView.dataSource = self
        mainTableView.delegate = self
        
               let homer = Simpsons(simpsonName: "Homer", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "homer")!)
        
               let marge = Simpsons(simpsonName: "Marge", simpsonJob: "HouseWife", simpsonImage: UIImage(named: "marge")!)
        
               let bart = Simpsons(simpsonName: "Bart", simpsonJob: "Student", simpsonImage: UIImage(named: "bart")!)
                
               let lisa = Simpsons(simpsonName: "Lisa", simpsonJob: "Student", simpsonImage: UIImage(named: "lisa")!)
        
        let homerArray = [homer,marge,bart,lisa]
        
    }
    
    
    // Kaç tane row olacak
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return 10
    }
    
    
    // TableView içerisinde nasıl bir gösterim olacak
    // Her bir hücre içerisinde gösterilecek değerler.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell() // Hücre görünümü.
        cell.textLabel?.text = "Sample Simpsons"
        return cell
        
        
    }


}

