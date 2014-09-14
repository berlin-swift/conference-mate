//
//  ParticipantViewController.swift
//  conferenceMate
//
//  Created by Beatriz Macuco on 9/11/14.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import Foundation
import UIKit

public class ParticipantViewController : UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet var participantNameLabel: UILabel!
    @IBOutlet var participantEmailLabel: UILabel!
    @IBOutlet var participantPosition: UILabel!
    @IBOutlet var participantCompanyName: UILabel!
    @IBOutlet var participantPicture: UIImageView!
    @IBOutlet var connectToParticipantButton: UIButton!
    @IBOutlet var contactsTableView : UITableView!
    
    var contacts: [String] = ["contact1", "contact2", "contact3", "contact4", "contact5"]
    
    var detailItem: AnyObject?
        {
        didSet
        {
            self.configureView()
        }
    }
    
    
    public func configureView()
    {
        self.navigationItem.title = "Profile"
        
    }
    
    public override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        self.configureView()
    }
    
    public func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    public func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        
        return contacts.count
    }
    
    public func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = contacts[indexPath.row]
        return cell
    }
    
}

