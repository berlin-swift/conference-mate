//
//  EventViewControllerTests.swift
//  conferenceMate
//
//  Created by Beatriz Macuco on 8/25/14.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import Foundation
import XCTest

class EventViewControllerTests: XCTestCase {
    
    let eventViewController: EventViewController = EventViewController()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testControllerInstantiates()
    {
        XCTAssertNotNil(eventViewController, "unable to instantiate eventViewController")
    }
    
    func testTableViewInstantiates()
    {
        XCTAssertNotNil(eventViewController.view, "unable to instantiate event controller's view")
    }

}
