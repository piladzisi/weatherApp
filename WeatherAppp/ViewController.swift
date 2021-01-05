//
//  ViewController.swift
//  WeatherAppp
//
//  Created by Anna Sibirtseva on 05/01/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cityTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction didTapGo() {
        
    }

    @IBSegueAction func showWeatherVC(weather: String?, coder: NSCoder) -> WeatherVC? {
        return WeatherVC(weather: weather, coder: coder)
    }
    
    @IBAction func returnToMainVC(_ sender: UIStoryboardSegue) {}

}

