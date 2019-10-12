//
//  MessageAddPage.swift
//  Message BoardUITests
//
//  Created by Joshua Sharp on 10/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import XCTest

struct MessageAddPage: TestPage {
    
    let testCase: XCTestCase
    
    var enterName: XCUIElement {
        return app.textFields["Enter your name:"]
    }
    
    var enterMessage: XCUIElement {
        return app.textViews["MessageText"]
    }
    
    var sendButton: XCUIElement {
        return app.navigationBars["New Message"].buttons["Send"]
    }
    
    @discardableResult func enterName(file: String = #file, line: UInt = #line) -> MessageAddPage {
        testCase.expect(exists: enterName, file: file, line: line)
        enterName.tap()
        enterName.typeText("Test Name 1")
        return self
    }
    
    @discardableResult mutating func enterMessage(file: String = #file, line: UInt = #line) -> MessageAddPage {
        testCase.expect(exists: enterMessage)
        enterMessage.typeText("Test Message 1")
        return self
    }
    
    @discardableResult func saveMessage(file: String = #file, line: UInt = #line) -> MessageAddPage {
        testCase.expect(exists: sendButton)
        sendButton.tap()
        return self
    }
    
    @discardableResult func verifyTitleIs(title: String, file: String = #file, line: UInt = #line) -> MessageAddPage {
        let title = app.navigationBars[title]
        //print(app)
        testCase.expect(exists: title, file: file, line: line)
        return self
    }
    
    //    @discardableResult func tapOnNextSolButton(file: String = #file, line: UInt = #line) -> MessageBoardTableViewPage {
    //        testCase.expect(exists: nextSolButton, file: file, line: line)
    //        nextSolButton.tap()
    //        return self
    //    }
    
    //    @discardableResult func tapOnCollectionViewCell(at index: Int, file: String = #file, line: UInt = #line) -> PhotoDetailPage {
    //        let cell = collectionViewCell(at: index)
    //        testCase.expect(exists: cell, file: file, line: line)
    //        cell.tap()
    //        return PhotoDetailPage(testCase: testCase)
    //    }
}


