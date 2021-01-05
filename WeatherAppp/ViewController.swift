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
        getWeather()
    }
    
    func getWeather(){
        
        var components = URLComponents(string: baseUrl)
        let cityQuery = URLQueryItem(name: "q", value: cityTextField.text)
        let appIdQuery = URLQueryItem(name: "appid", value: apiKey)
        components?.queryItems = [cityQuery, appIdQuery]
        
        guard let url = components?.url else { return }
        
        let session = URLSession.shared
        let dataTask = session.dataTask(with: url) { (data, _, error) in
            if let error = error {
                print(error)
            } else if let data = data {
                do {
                    let weather = try JSONDecoder().decode(WeatherReport.self, from: data)
                    print(weather)
                    DispatchQueue.main.async() {
                        self.performSegue(withIdentifier: "segue.Main.mainToWeather", sender: weather)
                    }
                } catch {
                    print(error)
                }
            }
        }
        dataTask.resume()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        if let weatherVC = segue.destination as? WeatherVC, let weather = sender as? WeatherReport {
            weatherVC.weather = weather
        }
    }
    
    @IBAction func returnToMainVC(_ sender: UIStoryboardSegue) {}
    
}

