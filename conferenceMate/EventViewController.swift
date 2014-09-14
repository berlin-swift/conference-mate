//
//  EventViewController.swift
//  conferenceMate
//
//  Created by Michał Ciesielski on 17/08/2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit
import CoreData

public class EventViewController: UIViewController, UITableViewDelegate, UITableViewDataSource
{
    @IBOutlet var eventNameLabel : UILabel!
    @IBOutlet var eventTimeLabel : UILabel!
    @IBOutlet var eventPlaceLabel : UILabel!
    @IBOutlet var descriptionLabel : UILabel!
    @IBOutlet var participantsTableView : UITableView!
    
    var participants: [String] = ["participant1", "participant2", "participant3", "participant4"]
    
    var detailItem: AnyObject?
    {
        didSet
        {
            self.configureView()
        }
    }
    
    public func configureView()
    {
        self.navigationItem.title = "Event"
    }
    
    public  override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        self.configureView()
    }
    
    public override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    public override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "showParticipant"
        {
            let indexPath = self.participantsTableView.indexPathForSelectedRow()
            let object = participants[indexPath.row]
            (segue.destinationViewController as ParticipantViewController).detailItem = object
        }
    }
    
    public func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }

    public func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        
        return participants.count
    }
    
    public func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell!
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = participants[indexPath.row]
        return cell
    }

}
