//
//  GameBoardTests.swift
//  TicTacToeTests
//
//  Created by Mitchell Budge on 6/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class GameBoardTests: XCTestCase {

    func testCreatingEmptyBoard() {
        
        let board = GameBoard()
        
        for x in 0..<3 {
            for y in 0..<3 {
                let coordinate = (x, y)
                
                let mark = board[coordinate]
                
                XCTAssertNil(mark, "Square at coordinate \(coordinate) is not empty")
            }
        }
    }
    
    func testTryPlacingMarks() {
        var board = GameBoard()
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (1, 1)))
        
        XCTAssertEqual(mark, .x)
        
        XCTAssertNoThrow(try board.place(mark: .o, on: (2, 2)))
        
        XCTAssertEqual(board[(2, 2)], .o)
    }
}
