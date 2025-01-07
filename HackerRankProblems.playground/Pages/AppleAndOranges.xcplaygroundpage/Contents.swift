import UIKit

import Foundation

import Foundation

/*
 * Complete the 'countApplesAndOranges' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER s
 *  2. INTEGER t
 *  3. INTEGER a
 *  4. INTEGER b
 *  5. INTEGER_ARRAY apples
 *  6. INTEGER_ARRAY oranges
 */

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    // Write your code here
    let houseRange = s...t
    let appleHouseStart = a
    let orangeHouseStart = b
    let arrayApples = apples
    let orangesArray = oranges
    let applePositions: [Int]
    let orangePositions: [Int]
    

    applePositions =  apples.map {
       a +  $0
    }
    
    
    var appleCounter = 0
    for applePosition in applePositions {
        if houseRange.contains(applePosition) {
            appleCounter += 1
        }
    }
    
    orangePositions =  oranges.map {
       b +  $0
    }
    
    print(appleCounter)

    
    var orangeCounter = 0
    for orangePosition in orangePositions {
        if houseRange.contains(orangePosition) {
            orangeCounter += 1
        }
    }
    
    
    
    print(orangeCounter)
}
countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [3,-2,-4])


