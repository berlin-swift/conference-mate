//
//  ConferenceViewControllerTests.swift
//  conferenceMate
//
//  Created by Beatriz on 24/08/14.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import Foundation
import XCTest

class ConferenceViewControllerTests: XCTestCase {
    
    let conferenceViewController: ConferenceViewController = ConferenceViewController()
    
    override func setUp()
    {
        super.setUp()
        
    }
    
    override func tearDown() {
        
        super.tearDown()
        
    }
    
    func testControllerInstantiates()
    {
        XCTAssertNotNil(conferenceViewController, "unable to instantiate conferenceViewController")
    }
    
    func testTableViewInstantiates()
    {
        XCTAssertNotNil(conferenceViewController.tableView, "unable to instantiate conferenceViewController's view")
    }
    
    func testTableViewDataSourceIsConnected()
    {
        XCTAssertNotNil(conferenceViewController.tableView.dataSource, "conference controller's datasource not connected")
    }
    
    func testTableViewDelegateIsConnected()
    {
        XCTAssertNotNil(conferenceViewController.tableView.delegate, "conference controller's delegate not connected")
    }
    
    func testTableViewReturnsNumberOfRowsInSections() {
        
        var expected = conferenceViewController.events.count;
        
        XCTAssertEqual(expected, conferenceViewController.tableView(conferenceViewController.tableView, numberOfRowsInSection:0))
        
    }
    
}
