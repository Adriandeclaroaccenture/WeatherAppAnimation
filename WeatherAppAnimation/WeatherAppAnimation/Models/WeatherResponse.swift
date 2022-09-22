//
//  WeatherResponse.swift
//  WeatherAppAnimation
//
//  Created by john.adrian.de.claro on 9/21/22.
//

import Foundation


struct WeatherResponse: Codable {
    
    var current: Weather
    var hourly: [Weather]
    var daily: [DailyWeather]
    
    static func empty() -> WeatherResponse {
            
        return WeatherResponse(current: Weather(), hourly: [Weather](repeating: Weather(), count: 23), daily: [DailyWeather](repeating: DailyWeather(), count: 7))
    }
}
