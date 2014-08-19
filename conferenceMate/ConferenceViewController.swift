//
//  DetailViewController.swift
//  conferenceMate
//
//  Created by Michał Ciesielski on 15/08/2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit
import CoreData



class ConferenceViewController: UITableViewController
{
    var events: [String] = ["event1", "event2"]

    var detailItem: AnyObject?
    {
        didSet
        {
            self.configureView()
        }
    }

    func configureView()
    {
        
        self.navigationItem.title = self.detailItem as String

    }

    override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.configureView()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "showEvent"
        {
            let indexPath = self.tableView.indexPathForSelectedRow()
            let object = events[indexPath.row]
            (segue.destinationViewController as EventViewController).detailItem = object
        }
    }
    
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return events.count
    }
    
    override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = events[indexPath.row]
        return cell
        
    }
    


}

