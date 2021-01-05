//
//  WeatherVC.swift
//  WeatherAppp
//
//  Created by Anna Sibirtseva on 05/01/2021.
//

import UIKit

class WeatherVC: UIViewController {

    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImage!
    @IBOutlet weak var degreesLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
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
