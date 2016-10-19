//: [Previous](@previous)

import Foundation

class Sender {
  
  var handler: ((Int) -> ())?
  
  func sendMessage() {
    handler?(5)
  }
  
}

class Receiver {
  
  init() {
    setup()
  }
  
  let sender = Sender()
  
  func myMethod(a: Int) {
    print(5)
  }
  
  func setup() {
    sender.handler = myMethod
  }
  
}

let receiver = Receiver()
receiver.sender.sendMessage()
