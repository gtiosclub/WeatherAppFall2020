//
//  WeatherModel.swift
//  Weather App
//
//  Created by Tanmoy Panigrahi on 9/21/20.
//

import Foundation

struct WeatherModel {
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
}
