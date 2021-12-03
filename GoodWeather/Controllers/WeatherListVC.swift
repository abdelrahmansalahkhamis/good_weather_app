//
//  WeatherListVC.swift
//  GoodWeather
//
//  Created by abdrahman on 01/12/2021.
//

import Foundation
import UIKit

class WeatherListVC: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        cell.cityNameLbl.text = "NewYork"
        
        cell.weatherLbl.text = "70°"
        return cell
    }
    
}
