//: Playground - noun: a place where people can play

import UIKit

//class OpenWeatherMapAPI {
//
//
//    
////    func getCurrentWeather(location: String, temperatureUnit: TemperatureUnit = .fahrenheit, _: ([String: Any?]?) -> ()) {
////        
////    }
//    
//    
//    func forecast(location: String, temperatureUnit = .fahrenheit, numberOfDays: Int, completionHandler: ([Weather]?, Error?) -> ()) {
//        
//        let forecast: [Weather]
//        
//        // networking call and receive JSON
//        // parse JSON and create weather struct array
//        
//        return forecast
//    }
//    
//    
//        
//    struct Weather {
//        let tempMax : Double
//        let tempMin: Double
//        let tempAvg: Double
//        
//        enum TemperatureUnit {
//            case fahrenheit
//            case celcius
//        }
//        
//        // we use enums so that the compiler could help us with dotnotation, if we don't and just use string the chances of crashing will be higher
//    }
//    
//    
//    
//}
//
//
//
//


func swapFirstAndLast(array: [Int]) -> [Int] {
    //write a function that swaps the first and the last element of an Int array
    var result = array
    let tmp = result[0]
    result[0] = result[result.count-1]
    result[result.count-1] = tmp
    return result
    
}


func swapFirstAndLast(array: [String]) -> [String] {
    //write a function that swaps the first and the last element of an Int array
    var result = array
    let tmp = result[0]
    result[0] = result[result.count-1]
    result[result.count-1] = tmp
    return result
    
}




































































//func doSomething(myFunction: (Int, Int) -> Int ){
//    
//}
//
//
//doSomething(myFunction: {(value1: Int, value2: Int) -> Int in
//    let result = value1 + value2
//    return result
//})
//
//








