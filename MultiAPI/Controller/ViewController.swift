//
//  ViewController.swift
//  MultiAPI
//
//  Created by Benny on 2/24/20.
//

import UIKit
import Alamofire

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //YELP API
        func callYelp() {
            let headers: HTTPHeaders = [
                "Authorization": "Bearer 9pd4ObwtVPJhZzCEuIFjdHieO7jLbyd7eS_OZSUa8-bkMsYO0NZjHWSyW-kBhaBDLHkSVNRJP9D5MvC163lumb51TdbHt430BFgg-YDLVBqUL4IVO2x7cq62d0JVXnYx",
                "Accept": "application/json"
            ]
            
            AF.request("https://api.yelp.com/v3/businesses/search?location=NewYorkCity&categories=french", headers: headers).responseJSON { yelpJSON in
                switch yelpJSON.result {
                case .success:
                    print("Validation Successful")
                    print("Yelp found + \(yelpJSON)")
                case let .failure(error):
                    print(error)
                }
            }
        }
        
        func callWeather() {
            AF.request("https://api.openweathermap.org/data/2.5/weather?q=new%20york&appid=37f84f1e00eb2f706866e32e5fc3dbce")
                .responseJSON { weatherJSON in
                    switch weatherJSON.result {
                    case .success:
                        print("Validation Successful")
                        print("Weather found + \(weatherJSON)")
                    case let .failure(error):
                        print(error)
                    }
            }
        }
        
        func callUnsplashThat() {
            AF.request("https://api.unsplash.com/photos?client_id=9_Ae61CmWtqagNrSwoWF1oik1O8S4fZS-wST1HnxcFA")
                .responseJSON { unsplashResponse in
                switch unsplashResponse.result {
                case .success:
                    print("Unsplash found")
                    print(unsplashResponse)
                case let .failure(error):
                    print(error)
                }
            }
        }
        
        callYelp()
        callWeather()
        callUnsplashThat()
    }
}

