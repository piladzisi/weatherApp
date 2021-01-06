//
//  Weather.swift
//  WeatherAppp
//
//  Created by Anna Sibirtseva on 05/01/2021.
//

import UIKit

struct WeatherReport: Codable {
    let city: String
    let breakdown: WeatherBreakdown
    let conditions: [WeatherCondition]
    
    private enum CodingKeys: String, CodingKey {
        case city = "name"
        case breakdown = "main"
        case conditions = "weather"
    }
}

extension WeatherReport {
    
    var conditionImage: UIImage {
        
        guard let mainCondition = conditions.first else { return UIImage() }
        
        switch mainCondition.id {
            
        case 200...299: return #imageLiteral(resourceName: "thunder")
        case 300...399: return #imageLiteral(resourceName: "drizzle")
        case 500...599: return #imageLiteral(resourceName: "rain")
        case 600...699: return #imageLiteral(resourceName: "snow")
        case 700...799: return #imageLiteral(resourceName: "atmosphere")
        case 800      : return #imageLiteral(resourceName: "sunny")
        case 801...899: return #imageLiteral(resourceName: "cloudy")
        default: return UIImage()
            
        }
    }
    
}
