//
//  ViewController.swift
//  Weather App
//
//  Created by Tanmoy Panigrahi on 9/21/20.
//

import UIKit

class ViewController: UIViewController, WeatherManagerDelegate {
    func didUpdateWeather(_ weatherManager: WeatherManager, weather: WeatherModel) {
        DispatchQueue.main.async {
            self.temperature.text = weather.temperatureString + "˚F"
            self.weatherLocation.text = "Atlanta"
        }
    }
    
    func didFailWithError(error: Error) {
        print(error)
    }
    



    @IBOutlet weak var temperature: UILabel!

    @IBOutlet weak var weatherLocation: UILabel!
    
    var weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        weatherManager.delegate = self
        weatherManager.fetchWeather()
    }


}

