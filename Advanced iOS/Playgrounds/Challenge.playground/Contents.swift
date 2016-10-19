//: Playground - noun: a place where people can play

import UIKit



//func swapFirstAndLast(array: [Int]) -> [Int] {
//    //write a function that swaps the first and the last element of an Int array
//    var result = array
//    let tmp = result[0]
//    result[0] = result[result.count-1]
//    result[result.count-1] = tmp
//    return result
//    
//}

//
//func swapFirstAndLast(array: [String]) -> [String] {
//    //write a function that swaps the first and the last element of an Int array
//    var result = array
//    let tmp = result[0]
//    result[0] = result[result.count-1]
//    result[result.count-1] = tmp
//    return result
//    
//}

func findFirst<T, U>(element: T, array: [T], argument: U) -> Int {
    return 0
}

//Write a function that finds the first occurrence of an element in an array and returns its index

func findFirst<T: Equatable>(element: T, array: [T]) -> Int {
    for i in 0..<array.count-1 {
        if array[i] == element {
            return i
        }
    }
    return -1
}

let practArray = [1,2,3,4]
findFirst(element: 3, array: practArray)

//








