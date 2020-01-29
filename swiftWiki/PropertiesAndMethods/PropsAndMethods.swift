//
//  PropsAndMethods.swift
//  swiftWiki
//
//  Created by Manpreet Singh on 2020-01-29.
//  Copyright © 2020 Manpreet Singh. All rights reserved.
//

class PropsAndMethods: InitClasses {

    //two types Stored instance property like name, grade, pet for a Student class
    // type Property on the other hand stored with type.
    func onLoad() {
        createWizard()
        calculateTemperature()
        calculateMonths()
    }

    private func createWizard() {
        var wizard = Wizard(firstName: "Son", lastName: "Pari")
        wizard.firstName = "sakt iman"
        wizard.lastName = "jatt"
        wizard.fullName = "manpreet Singh"
    }

    private func calculateMonths() {
        let month = Months(rawValue: 9)
        _ = month?.season
        _ = month?.monthsUntilJingleBells
    }

    private func calculateTemperature() {
       var temp = Temperature(fahrenheit: 45)
       _ = temp.celsius
       _ = temp.fahrenheit = 101
    }

}

struct Wizard {
    var firstName: String {
        willSet {
            print(firstName + "will be set to" + newValue)
        }
        didSet {
            if firstName.contains(" ") {
                print("No spaces alloweed! \(firstName) is not a first name. reverting to \(oldValue).")
                firstName = oldValue
            }
        }
    }
    var lastName: String

    // computed property
    // always start with var
    var fullName: String {
        get { return firstName + " " + lastName }
        set {
            let nameSubstrings = newValue.split(separator: " ")
            guard nameSubstrings.count >= 2 else {
                print("\(newValue) is not a fullName.")
                return
            }
        }
    }

    //lazy property
    //it will not intialize until requires
    //could be constant, expensive calculations
    lazy var magicalCreature = ""
}


enum Season: String, CaseIterable {
    case winter, spring, summer, autumn
}

enum Months: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december

    var season: Season {
        switch self {
        case .december, .january, .february:
            return .winter
        case .march, .april, .may:
            return .spring
        case .june, .july, .august:
            return .summer
        case .september, .october, .november:
            return .autumn
        }
    }

    var monthsUntilJingleBells: Int {
        return Months.december.rawValue - self.rawValue
    }
}

struct Temperature {

    var fahrenheit: Double {
        willSet {
            print("Setting the temp to \(newValue)")
        }
        didSet {
            if fahrenheit > 100 {
                print("temp can't exceed more than 100. Setting the temp back to \(oldValue)")
                fahrenheit = oldValue
            }
        }
    }
    var celsius: Double {
        get {  return ( fahrenheit - 32 ) / 1.8 }
        set { return fahrenheit = newValue * 1.8 + 32 }
    }
}
