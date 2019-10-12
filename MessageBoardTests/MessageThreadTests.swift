//
//  MessageThreadTests.swift
//  MessageBoardTests
//
//  Created by Andrew R Madsen on 9/13/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import XCTest
@testable import Message_Board

class MessageThreadTests: XCTestCase {
    
    private var app: XCUIApplication {
        return XCUIApplication()
    }
    
    override func setUp() {
        continueAfterFailure = false
        app.launch()
    }
    
    func testCreateMessageThreadObject () {
      //  let messageThread = MessageThread(title: "Test")
        //XCTAssertNotNil(messageThread.identifier)
        //XCTAssertNotNil(messageThread.title)
        //XCTAssertEqual(messageThread.title, "Test")
        //XCTAssertNil(messageThread.messages)
    }
}
