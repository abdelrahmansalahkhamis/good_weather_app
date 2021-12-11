//
//  SettingsViewModel.swift
//  GoodWeather
//
//  Created by abdrahman on 06/12/2021.
//

import Foundation

enum Unit: String, CaseIterable{
    case celsius = "metric"
    case fahrenheit = "imperial"
}

extension Unit{
    var displayName: String{
        get{
            switch(self){
            case .celsius:
                return "Celcius"
            case .fahrenheit:
                return "Fahrenheit"
            }
        }
    }
}

class SettingsViewModel{
    let units = Unit.allCases
    
    private var _selectedUnit: Unit = Unit.fahrenheit
    var selectedUnit: Unit{
        get{
            let userDefaults = UserDefaults.standard
            var unitValue = ""
            if let value = userDefaults.value(forKey: "Unit") as? String{
                //unitValue = value
                return Unit(rawValue: value)!
            }
            return _selectedUnit
            //return Unit(rawValue: unitValue) ?? Unit.celsius
        }
        set{
            let userDefaults = UserDefaults.standard
            userDefaults.set(newValue.rawValue, forKey: "Unit")
        }
    }
}
