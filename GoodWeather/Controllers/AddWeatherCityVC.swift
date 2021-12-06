//
//  AddWeatherCityVC.swift
//  GoodWeather
//
//  Created by abdrahman on 01/12/2021.
//

import Foundation
import UIKit

protocol AddWeatherDelegate {
    func addWeatherDidSave(vm: WeatherViewModel)
}

class AddWeatherCityVC: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    private var addWeatherVM = AddWeatherViewModel()
    var delegate: AddWeatherDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("---------")
    }
    
    @IBAction func saveCityButtonPressed(){
        if let city = cityNameTextField.text {
//            let weatherURL = URL(string: "http://api.openweathermap.org/data/2.5/weather?q=\(city)&appid=8cbb1e2a1574075cb0522cd58d5651ed")!
//            let weatherResource = Resource<Any>(url: weatherURL) { data in
//                return data
//            }
//            WebService().load(resource: weatherResource) { result in
//
//            }
            addWeatherVM.addWeather(for: city) { vm in
                self.delegate?.addWeatherDidSave(vm: vm)
                self.dismiss(animated: true, completion: nil)
            }
        }
        
    }
    
    @IBAction func close(){
        self.dismiss(animated: true, completion: nil)
    }
}
