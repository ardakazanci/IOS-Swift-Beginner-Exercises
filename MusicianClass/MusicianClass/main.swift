//
//  main.swift
//  MusicianClass
//
//  Created by Arda Kazancı on 17.10.2019.
//  Copyright © 2019 Arda Kazancı. All rights reserved.
//

import Foundation

let james = Musicians(nameInit: "James", ageInit: 25, instrumentInit: "Guitar",typeInit: .Bassist)

// Değiştirebileceğimiz property ler geliyor.

//james.age = 12
//james.name = "James"
//james.instrument = "Guitar"

print(james.age)



// İnternetten 100 lerce 1000 lerce veri çekerken hepsini hazırlamış olduğumuz array e almaktansa bu şekilde bir sınıf modeli tasarlayıp almak ve düzene koymak daha sağlıklı olacaktır.


let kirk = SuperMusicians(nameInit: "Kirk", ageInit: 56, instrumentInit: "Guitar", typeInit: .Vocalist)
kirk.sing()




