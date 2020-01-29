//
//  main.swift
//  swiftWiki
//
//  Created by Manpreet Singh on 2020-01-27.
//  Copyright © 2020 Manpreet Singh. All rights reserved.
//

import Foundation


protocol InitClasses {
    func onLoad() 
}
//
//let appliedProtocolAbstraction = ProtocolsAbstractionImpl()
//appliedProtocolAbstraction.run()
//
//let closures = Closures()
//closures.runClosure(a: 43, b: 23, operate: {$0 + $1})
//closures.runClosure(a: 12, b: 23) { $0 + $1 } //trailing closures 
//
//
//let collectionClosures = ClosuresOnCollections()
//collectionClosures.onLoad()

let props = PropsAndMethods()
props.onLoad()
