//
//  main.swift
//  swiftWiki
//
//  Created by Manpreet Singh on 2020-01-27.
//  Copyright © 2020 Manpreet Singh. All rights reserved.
//

import Foundation


let 😻 = Cat()
print(😻.age)
😻.walk()
😻.makeSound()

let 🐶 = Dog()
print(🐶.age)
🐶.walk()    //--> There is no dynamic dispatch. this is not calling the direct animal walk method
(🐶 as Animal).walk() // --> we need to cast it as animal then only it's calling the animal method
🐶.makeSound()
