//
//  APIExtensions.swift
//  WeatherAppAnimation
//
//  Created by john.adrian.de.claro on 9/21/22.
//

import Foundation


extension API {
    
    static let baseURLString = "https://api.openweathermap.org/data/2.5/"
    
    static func getURLFor(lat: Double, lon: Double) -> String {
        
        return "\(baseURLString)weather?lat=\(lat)&lon=\(lon)&exclude=minutely&appid\(key)&units=imperial"
        
        
    }
}
