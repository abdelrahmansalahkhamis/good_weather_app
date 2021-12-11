//
//  WeatherListViewModel.swift
//  GoodWeather
//
//  Created by abdrahman on 05/12/2021.
//

import Foundation

struct WeatherListViewModel{
    private var weatherViewModels = [WeatherViewModel]()
    
    mutating func addWeatherViewModel(_ vm: WeatherViewModel){
        weatherViewModels.append(vm)
    }
    func numberOfRows(_ section: Int) -> Int{
        return weatherViewModels.count
    }
    
    func modelAt(_ index: Int) -> WeatherViewModel{
        return weatherViewModels[index]
    }
    
    mutating func updateUnit(to unit: Unit){
        switch unit {
        case .celsius:
            toCelsius()
        case .fahrenheit:
            toFahrenheit()
        }
    }
    private mutating func toCelsius(){
        weatherViewModels = weatherViewModels.map({ vm in
            let weatherModel = vm
            weatherModel.tempreture = (weatherModel.tempreture - 32) * 5/9
            return weatherModel
        })
    }
    private mutating func toFahrenheit(){
        weatherViewModels = weatherViewModels.map({ vm in
            let weatherModel = vm
            weatherModel.tempreture = (weatherModel.tempreture * 5/9)  + 32
            return weatherModel
        })
    }
}

class WeatherViewModel{
    let weather: WeatherResponse
    var tempreture: Double
    
    init(weather: WeatherResponse){
        self.weather = weather
        tempreture = weather.main.temp
    }
    
    var city: String{
        return weather.name
    }
    
    
}
