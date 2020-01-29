//
//  Animals.swift
//  swiftWiki
//
//  Created by Manpreet Singh on 2020-01-27.
//  Copyright © 2020 Manpreet Singh. All rights reserved.

//  What -> Abstraction is the process of hiding certain details and showing only essential information to the user
//  In swift we can achieve abstraction by protocols
//  Why -> To achieve security - hide certain details and only show the important details of an object.

import Foundation

protocol Animal {
    func makeSound ()
}

// by conforming to protocol we must have to provide the implementation for makeSound() function

class Dog : Animal {
    func makeSound() {
        print("Boo boo")
    }

    func walk() {
        print("🐶 walks 2 steps")
    }
}

class Cat: Animal {

    func makeSound() {
        print("meeewaoo meewaao !!")
    }

}

// Protcol Extensions
// How -> Simple Extend the protocol by adding methods and computed properties.
// Why -> Instead of implementing behavior on conforming types we can define that on protocol. ^_^ hide those from outside
// +++ -> Default Implementation as function or computed properties defined by protocol extension do no need to be implemented by conforming types.

extension Animal {

    var age: Int {
        return 5
    }

    func walk() {
        print("Move Forward 4 steps")
    }
}

class ProtocolsAbstractionImpl{

    func run () {
        let 😻 = Cat()
        print(😻.age)
        😻.walk()
        😻.makeSound()

        let 🐶 = Dog()
        print(🐶.age)
        🐶.walk()    //--> There is no dynamic dispatch. this is not calling the direct animal walk method
        (🐶 as Animal).walk() // --> we need to cast it as animal then only it's calling the animal method
        🐶.makeSound()
    }
}
