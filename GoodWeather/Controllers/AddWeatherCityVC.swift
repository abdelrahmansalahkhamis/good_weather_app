//
//  AddWeatherCityVC.swift
//  GoodWeather
//
//  Created by abdrahman on 01/12/2021.
//

import Foundation
import UIKit

class AddWeatherCityVC: UIViewController {
    
    @IBOutlet weak var cityNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("---------")
    }
    
    @IBAction func saveCityButtonPressed(){
        
    }
    
    @IBAction func close(){
        self.dismiss(animated: true, completion: nil)
    }
}
