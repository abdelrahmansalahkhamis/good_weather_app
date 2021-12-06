//
//  String+Ext.swift
//  GoodWeather
//
//  Created by abdrahman on 05/12/2021.
//

import Foundation

extension String{
    func escaped() -> String{
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}
