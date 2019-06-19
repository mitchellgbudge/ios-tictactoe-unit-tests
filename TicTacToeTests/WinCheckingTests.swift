//
//  WinCheckingTests.swift
//  TicTacToeTests
//
//  Created by Mitchell Budge on 6/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import XCTest
@testable import TicTacToe

class WinCheckingTests: XCTestCase {

    func testWinCheckingVertical0() {
        var board = GameBoard()
        
        /*
         x o -
         x o -
         x - -
        */
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (0, 0)))
        
        XCTAssertNoThrow(try board.place(mark: .o, on: (1, 0)))
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (0, 1)))
        
        XCTAssertNoThrow(try board.place(mark: .o, on: (1, 1)))
        
        XCTAssertNoThrow(try board.place(mark: .x, on: (0, 2)))
        
        XCTAssertTrue(game(board: board, isWonBy: .x))
        XCTAssertFalse(game(board: board, isWonBy: .o))
    }
    
    func testWinCheckingVertical2() {
        var board = GameBoard()
        /*
         x o -
         x o -
         - o -
         */
        try! board.place(mark: .o, on: (1, 0))
        try! board.place(mark: .x, on: (0, 0))
        try! board.place(mark: .o, on: (1, 1))
        try! board.place(mark: .x, on: (0, 1))
        try! board.place(mark: .o, on: (1, 2))
        XCTAssertTrue(game(board: board, isWonBy: .o))
        XCTAssertFalse(game(board: board, isWonBy: .x))
    }

}
