//: Playground - noun: a place where people can play

import Foundation

protocol SenderDelegate: class {
  func myMethod(a: Int)
}

class Sender {
  
  weak var delegate: SenderDelegate?
  
  func sendMessage() {
    delegate?.myMethod(a: 5)
  }
  
}

class Receiver: SenderDelegate {
  
  let sender = Sender()
  
  init() {
    setup()
  }
  
  func setup() {
    sender.delegate = self
  }
  
  func myMethod(a: Int) {
    print(a)
  }
  
}

let receiver = Receiver()
receiver.sender.sendMessage()
