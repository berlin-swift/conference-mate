//
//  ParticipantViewControllerTests.swift
//  conferenceMate
//
//  Created by Beatriz Macuco on 9/14/14.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit
import XCTest

class ParticipantViewControllerTests : XCTestCase {
    
    let participantViewController: ParticipantViewController = ParticipantViewController()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testControllerInstantiates()
    {
        XCTAssertNotNil(participantViewController, "unable to instantiate eventViewController")
    }
    
    func testViewInstantiates()
    {
        XCTAssertNotNil(participantViewController.view, "unable to instantiate event controller's view")
    }
    
    func testViewInstantiatesSubviews()
    {
        XCTAssertNotNil(participantViewController.view.subviews,"unable to instantiate subviews")
    }
    
}


