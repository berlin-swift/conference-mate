//
//  Event.swift
//  conferenceMate
//
//  Created by Beatriz Macuco on 9/18/14.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import Foundation
import CoreData

class Event: NSManagedObject {

    @NSManaged var conferenceId: String
    @NSManaged var endDate: NSDate
    @NSManaged var id: String
    @NSManaged var name: String
    @NSManaged var place: String
    @NSManaged var speaker: String
    @NSManaged var startDate: NSDate
    @NSManaged var hasParticipants: NSSet
    @NSManaged var partOfEvent: Conference

}
