//
//  WeatherListVC.swift
//  GoodWeather
//
//  Created by abdrahman on 01/12/2021.
//

import Foundation
import UIKit

class WeatherListVC: UITableViewController {
    
    private var weatherListViewModel = WeatherListViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherListViewModel.numberOfRows(section)
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherCell
        let weatherVM = weatherListViewModel.modelAt(indexPath.row)
        cell.configure(weatherVM)
//        cell.cityNameLbl.text = "NewYork"
//
//        cell.weatherLbl.text = "70°"
        return cell
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddWeatherCityVC"{
            prepareSegueForAddWeatherCityViewController(segue: segue)
        }
    }
    func prepareSegueForAddWeatherCityViewController(segue: UIStoryboardSegue){
        guard let nav = segue.destination as? UINavigationController else{
            fatalError("NavigationController not found")
        }
        guard let addWeatherCityVC = nav.viewControllers.first as? AddWeatherCityVC else{
            fatalError("AddWeatherCityController not found")
        }
        addWeatherCityVC.delegate = self
    }
}

extension WeatherListVC: AddWeatherDelegate{
    func addWeatherDidSave(vm: WeatherViewModel) {
        print("vm is : \(vm)")
        weatherListViewModel.addWeatherViewModel(vm)
        self.tableView.reloadData()
    }
    
}
