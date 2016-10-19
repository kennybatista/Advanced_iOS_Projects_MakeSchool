//: [Previous](@previous)

import Foundation

//sender - cell
class Sender {
  
  let receiver = Receiver()
  
  func sendMessage() {
    //this is where the sender calls the receiver
    receiver.myMethod(a: 5)
  }
  
}

// receiver - table view controller
class Receiver {
  
    // the receiver defines what data they recive from the sender. here we receive a: Int
  func myMethod(a: Int) {
    print(a)
  }
  
}

let sender = Sender()
sender.sendMessage()



// steps
// 1 - we need an instance of the receiver in the sender ( a reference to the reciever, a reference to the table view conroller in our example)
// 2 -
