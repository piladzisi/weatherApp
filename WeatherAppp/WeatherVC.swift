//
//  WeatherVC.swift
//  WeatherAppp
//
//  Created by Anna Sibirtseva on 05/01/2021.
//

import UIKit

class WeatherVC: UIViewController {

    private let weather: String?
    override func viewDidLoad() {
        super.viewDidLoad()
    }
   
    required init?(coder: NSCoder) {
      fatalError("init(coder:) is not implemented")
    }
    
    init?(weather: String?, coder: NSCoder) {
        self.weather = weather
        super.init(coder: coder)
    }

}
