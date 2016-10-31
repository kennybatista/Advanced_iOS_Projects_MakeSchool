//: [Previous](@previous)

import Foundation

//implicit assignment of raw values
enum Face1: String {
  case happy
  case sad
  case nerd
}
Face1.happy.rawValue

// explicit assignment of raw values
enum Face2: String {
  case happy = ":-)"
  case sad = ":-("
  case nerd = "8-)"
}
Face2.happy.rawValue

// implicit assignment of raw values
enum Weekday1: Int {
  case monday
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  case sunday
}
Weekday1.tuesday.rawValue

// explicit assignment of raw values
enum Weekday2: Int {
  case monday = 1
  case tuesday
  case wednesday
  case thursday
  case friday
  case saturday
  case sunday
}
Weekday2.monday.rawValue

/*:
 
 ### Challenges
 
 1. Model a type called `CardinalDirection` using an `enum`. What could be the different _values_ for this type?
 2. Write a function called `help`, that takes a value of type `CardinalDirection` and returns a `String`. This function is supposed to help a lost ship on an ocean to find its way back home (it needs to go north-east). The return value of the function should indicate whether the value that was passed in helps the ship to get home. Use an *arrow unicode character* (`→`, `←`, `↑`, `↓`) in the returned `String` to illustrate the direction on a map, e.g.: `This direction (↓) does not help the ship to get home.`
 3. Model a type called `Month` using an `enum`. That type should represent all the different months in one year. 
 4. Write a function that returns a `String` and indicates at which position this month is inside a year, e.g.: `March is the 3rd month of the year`.
 */


// MARK: Challenge 1: Model a type called CardinalDirection using an enum. What could be the different values for this type?

enum CardinalDirection: String {
    case north = ""
    case east = "→"
    case south = "↓"
    case west = "←"
}

// MARK: Challenge 2: Write a function called help, that takes a value of type CardinalDirection and returns a String. This function is supposed to help a lost ship on an ocean to find its way back home (it needs to go north-east). The return value of the function should indicate whether the value that was passed in helps the ship to get home. Use an arrow unicode character (→, ←, ↑, ↓) in the returned String to illustrate the direction on a map, e.g.: This direction (↓) does not help the ship to get home.
func help(direction: CardinalDirection) -> String {
    var wayHome: String
    // the switch takes in a type of Cardinal Direction. We use switches as "if & else". If we use more than 3 if else, then we should just use a switch. We use switches because the syntax is a lot more straight forward
    switch direction {
        // AP: When calling the cases, we don't need to state the type to call the value. We can just use the dot notation to call the values. Like this : .north
    case .north, .east: wayHome = "Yes, this direction does get the ship home"
    case .south: wayHome = "Nope, this direction \("↓") does not help the ship get back home"
    case .west: wayHome = "Nope, this direction \("←") does not help the ship get back home"

    }
    
    return wayHome
    
    
}
help(direction: .south)


//MARK: Third Challenge: Model a type called Month using an enum. That type should represent all the different months in one year.

enum Month: String {
    case January
    case February
    case March
    case April
    case May
    case June
    case July
    case August
    case September
    case October
    case November
    case December
}


//MARK: Fourth Challenge : Write a function that returns a String and indicates at which position this month is inside a year, e.g.: March is the 3rd month of the year.

func whatIsTheMonthsPosition(months: Month) -> String {
    return " \(months.rawValue) is number \(months.hashValue) in the Calendar!"
}

whatIsTheMonthsPosition(months: .September)


