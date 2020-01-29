//
//  CollectionWithClosures.swift
//  swiftWiki
//
//  Created by Manpreet Singh on 2020-01-28.
//  Copyright © 2020 Manpreet Singh. All rights reserved.
//
// --> We will be learning about
// 1. ForEach
// 2. Map
// 3. Compact Map
// 4. Flat Map

class ClosuresOnCollections : InitClasses{

    // Let's suppose we have a arry of prices
    let prices = [1.50, 10.00, 4.99, 2.30, 8.19]

    func onLoad() {
        runMap()
        runForEach()
        runCompactMap()
        runFlatMap()
    }

    func runForEach() {
        //to print all the values we can use the for loop in such
        //for price in prices {
        //    print(price)
        //}
        // we can simply achieve this by
        prices.forEach { print($0) }
        // but for each is doing looping through all the values but is not returning anything
    }

    func runMap() {
        // as of holidays we are giving 10% off for the price
        // we can do that by using for loop
        var discounted: [Double] = []
        //for price in prices {
        //    let amount =  price * 90 / 100
        //    discounted.append(amount)
        //}
        //    print(discounted)
        //but there is a faster way to do that

        discounted = prices.map { $0 * 0.9 }
        print(discounted)
        // map is doing looping through all the values and returnin in new array
    }

    func runCompactMap() {
        // compact map will check for empty and filter out specific element type from the collection
        let userInput = ["meow!", "15", "37.5", "seven"]
        // --------------------------------------
        // var numbersOnly: [Int] = []
        //if we want to print only the integers from this list we can do that using for loop in following way
        //        for input in userInput {
        //            guard let input = Int(input) else {
        //                continue
        //            }
        //            numbersOnly.append(input)
        //        }
        //        print(numbersOnly)

        // there is swfty wwat to do that
        let validInput = userInput.compactMap { (input) in
            Int(input)
        }
        print(validInput)

    }

    func runFlatMap() {
        //they are used to convert if a collection have collection of mutiple arrays
        // --------------------------------------
        let arrayOfDwarfArrays = [
          ["Sleepy", "Grumpy", "Doc", "Bashful", "Sneezy"],
          ["Thorin", "Nori", "Bombur"]
        ]
        // --------------------------------------


        let alteredArray = arrayOfDwarfArrays.flatMap { (dwarves) -> [String] in
            dwarves
        }
        print(alteredArray)
    }

    func reduce() {

    }

    func filter() {

    }

    func sort() {

    }

}
