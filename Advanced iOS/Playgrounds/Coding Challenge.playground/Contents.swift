//: Playground - noun: a place where people can play

import UIKit

func swapFirstAndLast(array: [Int]) -> [Int] {
    //write a function that swaps the first and the last element of an Int array
    var result = array
    let tmp = result[0]
    result[0] = result[result.count-1]
    result[result.count-1] = tmp
    return result
    
}



