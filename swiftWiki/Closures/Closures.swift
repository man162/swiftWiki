//
//  Closures.swift
//  swiftWiki
//
//  Created by Manpreet Singh on 2020-01-28.
//  Copyright © 2020 Manpreet Singh. All rights reserved.
//

import Foundation

class Closures : InitClasses {

    func onLoad() {
        _ = add(4, 10)
    }


    typealias Operate = (Int, Int) -> Int

    func add(_ a: Int, _ b: Int) -> String {
        return("\(a + b )")
    }

    func runClosure(a: Int, b: Int, operate: Operate) {
        print(operate(a, b))
    }


}
