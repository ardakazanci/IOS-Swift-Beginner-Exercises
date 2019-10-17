//
//  Musicians.swift
//  MusicianClass
//
//  Created by Arda Kazancı on 17.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import Foundation

// Kategorileme düzenleme kontrolü sağlar.
enum MusiciansType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bassist
    case Violenist
}



class Musicians {
    
    /*
    var name = ""
    var age = 0
    var instrument = ""
     */
    
    // Define ettik.
    var name:String
    var age:Int
    var instrument:String
    
    
    var type : MusiciansType
    
    
    // init etmemiz gerek.
    // Sınıf oluşturulurken yapılacak işlemleri ele almak için init kullanılır.
    // Sınıftan obje oluşturulunca yapılacak işlemler burada tanımlanır.
    // initializer - constructor
    init(nameInit:String,ageInit:Int,instrumentInit:String,typeInit:MusiciansType) {
        
        name = nameInit
        age = ageInit
        instrument = instrumentInit
        type = typeInit
        
    }
    
    
    
    
}
