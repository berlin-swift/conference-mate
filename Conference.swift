//
//  Conference.swift
//  conferenceMate
//
//  Created by Beatriz Macuco on 9/18/14.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import Foundation
import CoreData

class Conference: NSManagedObject {

    @NSManaged var id: String
    @NSManaged var name: String
    @NSManaged var hasEvents: NSSet
    @NSManaged var hasParticipants: NSSet

}
