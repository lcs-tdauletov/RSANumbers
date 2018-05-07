//
//  main.swift
//  RSANumbers
//
//  Created by Gordon, Russell on 2018-04-04.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

var providedLowerLim = 0
var printedLowerLim = 0
var providedUpperLim = 0
var printedUpperLim = 0

while true {
    
    print("Give me some lower limit")
    
    guard let givenInputL = readLine() else {
        continue
    }
    guard let integerInputL = Int(givenInputL) else {
        continue
    }
    if integerInputL < 1 || integerInputL > 1_000 {
        continue
    }
    providedLowerLim = integerInputL
    printedLowerLim = integerInputL
    
    break
}

while true {
    
    print("Give me some upper limit")
    
    guard let givenInputU = readLine() else {
        continue
    }
    guard let integerInputU = Int(givenInputU) else {
        continue
    }
    if integerInputU < providedLowerLim {
        continue
    }
    providedUpperLim = integerInputU
    
    break
}

var arrayForRSA : [Int] = []


while providedLowerLim < providedUpperLim + 1 {
    var countThediv = 0
    inner: for divisor in 1...providedLowerLim {
        if providedLowerLim % divisor == 0 {
            countThediv += 1
        }
    }
    if countThediv == 4 {
        arrayForRSA.append(providedLowerLim)
    }
    
    providedLowerLim += 1
}

print("There number of RSA numbers between \(printedLowerLim) and \(providedUpperLim) is \(arrayForRSA.count)")


