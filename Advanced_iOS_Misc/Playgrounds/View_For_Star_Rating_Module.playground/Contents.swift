//: Playground - noun: a place where people can play

import UIKit

var view: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 650, height: 100))
view.backgroundColor = UIColor.white

func createLabels(){
    var xPosition = 0
    var width = 100
    
    for i in 1...5 {
        let label: UILabel = UILabel(frame: CGRect(x: xPosition, y: 0, width: width, height: 100))
        label.text = "✭"
        label.font = UIFont(name: "Helvetica", size: 90)
        label.frame.origin.x += 60
        view.addSubview(label)
        label
        xPosition += width + 10
    }
}

createLabels()

view