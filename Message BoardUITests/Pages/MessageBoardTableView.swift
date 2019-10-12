//
//  MessageBoardTableView.swift
//  Message BoardUITests
//
//  Created by Joshua Sharp on 10/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import XCTest

struct MessageBoardTableViewPage: TestPage {
    
    let testCase: XCTestCase
    var startingCount: Int = 0
    
    var tableView: XCUIElement {
        return app.tables["Empty list"]
    }
    
    var createNewThreadField: XCUIElement {
        return app.tables.containing(.textField, identifier:"Create a new thread:").element
    }
    
    @discardableResult func tapOnCreateNewThreadField(file: String = #file, line: UInt = #line) -> MessageBoardTableViewPage {
        testCase.expect(exists: createNewThreadField, file: file, line: line)
        createNewThreadField.tap()
        return self
    }

    @discardableResult func typeInMessageThreadName(file: String = #file, line: UInt = #line) -> MessageBoardTableViewPage {
        //startingCount = tableView.cells.count
        createNewThreadField.typeText("Test 1")
        return self
    }
    
    @discardableResult func checkNewThreadCreated(file: String = #file, line: UInt = #line) -> MessageBoardTableViewPage {
        testCase.expect(true: tableView.cells.count > startingCount)
        return self
    }
    
    @discardableResult func clickOnThread(file: String = #file, line: UInt = #line) -> MessageBoardTableViewPage {
        testCase.expect(exists: <#T##XCUIElement#>)
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
    
    
    @discardableResult func verifyTitleIs(title: String, file: String = #file, line: UInt = #line) -> MessageBoardTableViewPage {
        let title = app.navigationBars[title]
        //print(app)
        testCase.expect(exists: title, file: file, line: line)
        return self
    }
}


