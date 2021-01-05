//
//  WeatherVC.swift
//  WeatherAppp
//
//  Created by Anna Sibirtseva on 05/01/2021.
//

import UIKit

class WeatherVC: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var degreesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var weather: WeatherReport?
//    
//    required init?(coder: NSCoder) {
//      fatalError("init(coder:) is not implemented")
//    }
//    
//    init?(weather: WeatherReport, coder: NSCoder) {
//        self.weather = weather
//        super.init(coder: coder)
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let weather = weather else { return }
        cityLabel.text = weather.city
        degreesLabel.text = String(weather.breakdown.temp)
        
    }
}
