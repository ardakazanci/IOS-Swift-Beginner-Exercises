//
//  SuperMusicians.swift
//  MusicianClass
//
//  Created by Arda Kazancı on 22.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import Foundation

class SuperMusicians: Musicians {
    
    // Access Levels - ERİŞİM SEVİYELERİ
    /*
     private : Sınıf içi
     filePrivate : Dosya içi
     internal : Default değer.
     public
     open
     */
    
    
    
    
    // super. ile super sınıftan bir metoda işarette bulunduk.
    // Musicians sınıfından kalıtım sağladık.
    // SubClass : SuperMusicians SuperClass : Musicians
    // SuperClass'ta ki metot ve propertlere ulaşabiliriz.
    override func sing() {
        super.sing()
        print("Other song")
    }
    
}
