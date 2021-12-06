//
//  WeatherCell.swift
//  GoodWeather
//
//  Created by abdrahman on 01/12/2021.
//

import Foundation
import UIKit

class WeatherCell: UITableViewCell {
    @IBOutlet weak var cityNameLbl: UILabel!
    @IBOutlet weak var tempratureLbl: UILabel!
    
    func configure(_ vm: WeatherViewModel){
        self.cityNameLbl.text = vm.city
        self.tempratureLbl.text = "\(vm.tempriture.formatAsDegree())"
    }
    
}
