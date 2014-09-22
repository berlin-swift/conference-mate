//
//  Participant.swift
//  conferenceMate
//
//  Created by Beatriz Macuco on 9/22/14.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import Foundation
import CoreData

class Participant: NSManagedObject {

    @NSManaged var company: String
    @NSManaged var conferenceId: String
    @NSManaged var email: String
    @NSManaged var eventId: String
    @NSManaged var firstName: String
    @NSManaged var id: String
    @NSManaged var middleName: String
    @NSManaged var picture: String
    @NSManaged var position: String
    @NSManaged var attendConferences: NSSet
    @NSManaged var attendEvents: NSSet

}
