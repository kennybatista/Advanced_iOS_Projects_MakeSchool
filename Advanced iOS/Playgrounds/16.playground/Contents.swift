//: Playground - noun: a place where people can play

import UIKit

//MARK: First Challenge

let firstView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))
firstView.backgroundColor = UIColor.red



let secondView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 50, height: 50))
secondView.backgroundColor = UIColor.green


firstView.addSubview(secondView)

secondView.frame.origin.x = 25
secondView.frame.origin.y = 25

firstView



//MARK: Second Challenge

let thirdView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))
thirdView.backgroundColor = UIColor.red

let fourthView = UIView(frame: CGRect(x: 0, y: 0, width: 33.0, height: 33.0))
fourthView.backgroundColor = UIColor.green
let fifthView = UIView(frame: CGRect(x: 33.0, y: 33.0, width: 33.0, height: 33.0))
fifthView.backgroundColor = UIColor.green
let sixthView = UIView(frame: CGRect(x: 66.0, y: 66.0, width: 34.0, height: 34.0))
sixthView.backgroundColor = UIColor.green

thirdView.addSubview(fourthView)
thirdView.addSubview(fifthView)
thirdView.addSubview(sixthView)


thirdView

//MARK: Third Challenge
let subRowBackground = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 50.0))
subRowBackground.backgroundColor = UIColor.red


let subRowSubView1 = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 33.33, height: 50.0))
subRowSubView1.backgroundColor = UIColor.clear
subRowSubView1.layer.borderWidth = 1
subRowSubView1.layer.borderColor = UIColor.black.cgColor

let subRowSubView2 = UIView(frame: CGRect(x: 33.0, y: 0.0, width: 33.33, height: 50.0))
subRowSubView2.backgroundColor = UIColor.clear
subRowSubView2.layer.borderWidth = 1
subRowSubView2.layer.borderColor = UIColor.black.cgColor

let subRowSubView3 = UIView(frame: CGRect(x: 66.0, y: 0.0, width: 34.40, height: 50.0))
subRowSubView3.backgroundColor = UIColor.clear
subRowSubView3.layer.borderWidth = 1
subRowSubView3.layer.borderColor = UIColor.black.cgColor


subRowBackground.addSubview(subRowSubView1)
subRowBackground.addSubview(subRowSubView2)
subRowBackground.addSubview(subRowSubView3)

subRowBackground

//MARK: Challenge 4
let lastView = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100, height: 100))
lastView.backgroundColor = UIColor.red

//for x in 0...9 {
//    lastView.addSubview(UIView(frame: CGRect(x: x * 33, y: x * 33, width: 33.33, height: 33.33)))
//    lastView.backgroundColor = UIColor
//}







