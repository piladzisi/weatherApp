//
//  ViewController.swift
//  WeatherAppp
//
//  Created by Anna Sibirtseva on 05/01/2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func showWeatherVC(weather: String?, coder: NSCoder) -> WeatherVC? {
        return WeatherVC(weather: weather, coder: coder)
    }

}

