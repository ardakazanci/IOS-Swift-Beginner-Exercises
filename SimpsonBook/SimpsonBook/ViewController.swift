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
    
    var homeArray = [Simpsons]()
    var choosenSimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        mainTableView.dataSource = self
        mainTableView.delegate = self
        
        let homer = Simpsons(simpsonName: "Homer", simpsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "homer")!)
        
        let marge = Simpsons(simpsonName: "Marge", simpsonJob: "HouseWife", simpsonImage: UIImage(named: "marge")!)
        
        let bart = Simpsons(simpsonName: "Bart", simpsonJob: "Student", simpsonImage: UIImage(named: "bart")!)
        
        let lisa = Simpsons(simpsonName: "Lisa", simpsonJob: "Student", simpsonImage: UIImage(named: "lisa")!)
        
        homeArray.append(homer)
        homeArray.append(marge)
        homeArray.append(bart)
        homeArray.append(lisa)
        
    }
    
    
    // Kaç tane row olacak
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return homeArray.count
    }
    
    
    // TableView içerisinde nasıl bir gösterim olacak
    // Her bir hücre içerisinde gösterilecek değerler.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell() // Hücre görünümü.
        cell.textLabel?.text = homeArray[indexPath.row].name
        return cell
        
        
    }
    
    // Tıklanan seçime göre yapılacak işlemler.
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // Seçilen Simpsons değerini alıyoruz.
        choosenSimpson = homeArray[indexPath.row]
        
        self.performSegue(withIdentifier:"toDetailsVC", sender: nil)
    }
    
    // Segue olmadan çalışacak metod.
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let gidilecekVC = segue.destination as! DetailsViewController
            gidilecekVC.selectionSimpsons = choosenSimpson
        }
    }
    
    
    
    
}

