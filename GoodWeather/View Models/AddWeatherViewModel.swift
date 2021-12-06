//
//  AddWeatherViewModel.swift
//  GoodWeather
//
//  Created by abdrahman on 05/12/2021.
//

import Foundation

class AddWeatherViewModel{
    func addWeather(for city: String, completion: @escaping (WeatherViewModel) -> Void){
        let weatherURL = Constants.Urls.urlForWeatherByCity(city: city)
        let weatherResource = Resource<WeatherResponse>(url: weatherURL) { data in
            let weatherResponse = try? JSONDecoder().decode(WeatherResponse.self, from: data)
            return weatherResponse
        }
        WebService().load(resource: weatherResource) { result in
            if let weatherResource = result{
                let vm = WeatherViewModel(weather: weatherResource)
                completion(vm)
            }
        }
    }
}
