//
//  FriendlySocialTests.swift
//  Appz
//
//  Created by Mariam AlJamea on 1/8/16.
//  Copyright © 2016 kitz. All rights reserved.
//

import XCTest
@testable import Appz

class FriendlySocialTests: XCTestCase {
    
    let appCaller = ApplicationCallerMock()
    
    func testConfiguration() {
        
        let quora = Applications.FriendlySocial()
        XCTAssertEqual(quora.scheme, "friendly-chrome-x-success:")
        XCTAssertEqual(quora.fallbackURL, "http://friendly.io")
    }
    
    func testOpen() {
        
        let action = Applications.FriendlySocial.Action.Open
        
        XCTAssertEqual(action.paths.app.pathComponents, ["app"])
        XCTAssertEqual(action.paths.app.queryParameters, [:])
        XCTAssertEqual(action.paths.web, Path())
    }
}