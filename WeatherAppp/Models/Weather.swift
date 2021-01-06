//
//  Weather.swift
//  WeatherAppp
//
//  Created by Anna Sibirtseva on 05/01/2021.
//

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
