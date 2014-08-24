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
    
    func testConferenceControllerInstantiates()
    {
        XCTAssertNotNil(conferenceViewController, "unable to instantiate conferenceViewController")
    }
    
    func testConferenceControllerViewInstantiates()
    {
        XCTAssertNotNil(conferenceViewController.tableView, "unable to instantiate conferenceViewController's view")
    }
    
    func testConferenceControllerDataSourceIsConnected()
    {
        XCTAssertNotNil(conferenceViewController.tableView.dataSource, "conference controller's datasource not connected")
    }
    
    func testConferenceControllerDelegateIsConnected()
    {
        XCTAssertNotNil(conferenceViewController.tableView.delegate, "conference controller's delegate not connected")
    }
    
    func testConferenceControllerReturnsNumberOfSections() {
        
        var expected = conferenceViewController.events.count;
        
        XCTAssertEqual(expected, conferenceViewController.tableView(conferenceViewController.tableView, numberOfRowsInSection:1));
        
    }
    
}
