//
//  ViewController.swift
//  WeatherAppp
//
//  Created by Anna Sibirtseva on 05/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!
   
    let apiKey = "5d3c281f8b7ece9515e8f1dac20c6b1b"
    let baseUrl = "http://api.openweathermap.org/data/2.5/weather"
    
    @IBAction func didTapGo() {
        var components = URLComponents(string: baseUrl)
        let cityQuery = URLQueryItem(name: "q", value: cityTextField.text)
        let appIdQuery = URLQueryItem(name: "appid", value: apiKey)
        components?.queryItems = [cityQuery, appIdQuery]
    }

    @IBSegueAction func showWeatherVC(coder: NSCoder) -> WeatherVC? {
        let weather = Weather(city: "London", degrees: 105, conditions: "sunny")
        return WeatherVC(weather: weather, coder: coder)
    }
    
    @IBAction func returnToMainVC(_ sender: UIStoryboardSegue) {}

}

