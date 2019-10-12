//
//  MessageBoardDetailViewPage.swift
//  Message BoardUITests
//
//  Created by Joshua Sharp on 10/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import XCTest

struct MessageBoardDetailViewPage: TestPage {
    
    let testCase: XCTestCase
    
    var tableView: XCUIElement {
        return app.tables/*@START_MENU_TOKEN@*/.staticTexts["Test 1"]/*[[".cells.staticTexts[\"Test 1\"]",".staticTexts[\"Test 1\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
    }
    
    var createNewMessageButton: XCUIElement {
        return app.navigationBars["Test 1"].buttons["Add"]
    }
    
    @discardableResult func tapOnCreateNewMessageButton(file: String = #file, line: UInt = #line) -> MessageAddPage {
        testCase.expect(exists: createNewMessageButton, file: file, line: line)
        createNewMessageButton.tap()
        return MessageAddPage(testCase: testCase)
    }
    
    @discardableResult func verifyTitleIs(title: String, file: String = #file, line: UInt = #line) -> MessageBoardDetailViewPage {
        let title = app.navigationBars[title]
        //print(app)
        testCase.expect(exists: title, file: file, line: line)
        return self
    }
    
    
    //    @discardableResult func tapOnNextSolButton(file: String = #file, line: UInt = #line) -> MessageBoardDetailViewPage {
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


