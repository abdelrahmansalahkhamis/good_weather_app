//
//  Double+Ext.swift
//  GoodWeather
//
//  Created by abdrahman on 05/12/2021.
//

import Foundation

extension Double{
    func formatAsDegree() -> String{
        return String(format: "%.0f°", self)
    }
}
