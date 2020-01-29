//
//  Enumeration.swift
//  swiftWiki
//
//  Created by Manpreet Singh on 2020-01-28.
//  Copyright © 2020 Manpreet Singh. All rights reserved.
//

class Enumeration : InitClasses {

    func onLoad() {
       _ = monthUntilJingleBells(from: .April)
    }

    func monthUntilJingleBells(from month: Month) -> Int {
        Month.December.rawValue - month.rawValue
    }
}

enum Month: Int {
    case January = 1, February, March, April, May, June, July, August, September, October, November, December
}

let month: Month = .January
