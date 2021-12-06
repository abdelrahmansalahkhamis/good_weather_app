//
//  WeatherResponse.swift
//  GoodWeather
//
//  Created by abdrahman on 04/12/2021.
//

import Foundation


struct WeatherResponse: Decodable{
    let name: String
    let main: Weather
}

struct Weather: Decodable{
    let temp: Double
    let humidity: Double
}
