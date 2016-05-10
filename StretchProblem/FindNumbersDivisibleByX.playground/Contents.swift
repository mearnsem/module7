//: Playground - noun: a place where people can play

import UIKit

//Make a method that prints every X number between 0 and Y
//take in x and y, return all numbers between 0 and y that can be divided by x

/*
 
 return 0...y % x == 0
 
 */

func divisibleBy(x: Int, y: Int) {
    let intArray = Array(0...y)
    for integer in intArray {
        if (integer % x == 0) {
            print(integer)
        }
    }
}

divisibleBy(2, y: 20)



