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
    var landmarkNames = [String]()
    var landmarksImages = [UIImage]()
    
    var selectedLandmarkName = ""
    var selectedLandmarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Aşağıda ki 2 fonksiyonun çalışması için gerekmektedir.
        tableView.delegate = self
        tableView.dataSource = self
        
        // String Listesi
        
         landmarkNames.append("Akropolis")
         landmarkNames.append("Angkor")
         landmarkNames.append("Çin Seddi")
         landmarkNames.append("Giza Pramitleri")
         landmarkNames.append("Kolezyum")
         landmarkNames.append("Macchu Picchu")
         landmarkNames.append("Teotihuacan")
        
        // Image Listesi
       
         landmarksImages.append(UIImage(named: "akropolis")!)
         landmarksImages.append(UIImage(named: "angkor")!)
         landmarksImages.append(UIImage(named: "cin_seddi")!)
         landmarksImages.append(UIImage(named: "giza_pramitleri")!)
         landmarksImages.append(UIImage(named: "kolezyum")!)
         landmarksImages.append(UIImage(named: "machu_piccu")!)
         landmarksImages.append(UIImage(named: "Teotihuacan")!)
        
        // Navigasyon başlığı atayabiliyoruz
        navigationItem.title = "Landmark Book"
        
        
    }
    
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            
        // eğer silmek istiyorsa aşağıda işlemler uygulandı.
        if editingStyle == .delete{
            landmarkNames.remove(at: indexPath.row)
            landmarksImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
        
    }
    
    
    /** Aşağıda ki fonksiyonu burada kullanma hakkına sahip oluyoruz.  **/
    
    // Kaç tane satır olacak ?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           // return 10 // 10 tane satır olacak
        return landmarkNames.count
       }
    // Göstereceğimiz değerler neler olacak ? ve Nasıl gösterilcek ? 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           
        let cell = UITableViewCell()
        //cell.textLabel?.text = "Test"
        // indexpath.row -> içinde bulunduğu row içinde ki index numarasını veriyor.
        cell.textLabel?.text = landmarkNames[indexPath.row]
        
        return cell
        
       }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        // segue olmadan tıklanan row un içinde ki name & image ' i alıyoruz.
        selectedLandmarkName = landmarkNames[indexPath.row]
        selectedLandmarkImage = landmarksImages[indexPath.row]
        
        
        
        performSegue(withIdentifier: "toImageViewController", sender: nil)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segue olmadan önce yapılacak işlem.
        
        if segue.identifier == "toImageViewController" {
            
            // segue.destination : hedef viewcontroler , karşı taraftaki imageviewcontroller ı bir değişkene tanımlamamız gerek.
            // as bunu tanımla ve ImageViewController a cast et.
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.selectedLandmarkName = selectedLandmarkName
            destinationVC.selectedLandmarkImage = selectedLandmarkImage
            
        }
        
    }

}

