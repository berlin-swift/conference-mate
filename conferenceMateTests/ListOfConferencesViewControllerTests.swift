//
//  ListOfConferencesViewControllerTests.swift
//  conferenceMate
//
//  Created by Beatriz Macuco on 8/25/14.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit
import XCTest

class ListOfConferencesViewControllerTests: XCTestCase {

    let listOfConferencesViewController: ListOfConferencesViewController = ListOfConferencesViewController()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testControllerInstantiates()
    {
        XCTAssertNotNil(listOfConferencesViewController, "unable to instantiate conferenceViewController")
    }
    
    func testTableViewInstantiates()
    {
        XCTAssertNotNil(listOfConferencesViewController.tableView, "unable to instantiate conferenceViewController's view")
    }
    
    func testTableViewDataSourceIsConnected()
    {
        XCTAssertNotNil(listOfConferencesViewController.tableView.dataSource, "conference controller's datasource not connected")
    }
    
    func testTableViewDelegateIsConnected()
    {
        XCTAssertNotNil(listOfConferencesViewController.tableView.delegate, "conference controller's delegate not connected")
    }
    
    func testTableViewReturnsNumberOfRowsInSections() {
        
        var expected = listOfConferencesViewController.conferences.count;
        
        XCTAssertEqual(expected, listOfConferencesViewController.tableView(listOfConferencesViewController.tableView, numberOfRowsInSection:0))
        
    }
}
