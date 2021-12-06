//
//  Constants.swift
//  GoodWeather
//
//  Created by abdrahman on 05/12/2021.
//

import Foundation


struct Constants{
    struct Urls{
        static func urlForWeatherByCity(city: String) -> URL {
            return URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(city.escaped())&appid=8cbb1e2a1574075cb0522cd58d5651ed")!
        }
    }
}
