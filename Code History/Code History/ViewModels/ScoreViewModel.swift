//
//  ScoreViewModel.swift
//  Code History
//
//  Created by 林庭瑄 on 2024/1/28.
//

import Foundation

struct ScoreViewModel {
    let correctGuesses: Int
    let incorrectGuesses: Int
    
    var percentage: Int {
        (correctGuesses * 100 / (correctGuesses + incorrectGuesses))
    }
}
