//
//  DetailViewController.swift
//  conferenceMate
//
//  Created by Michał Ciesielski on 15/08/2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit
import CoreData

public class ConferenceViewController: UITableViewController
{
    var events: [String] = ["event1", "event2"]

    var detailItem: AnyObject?
    {
        didSet
        {
            self.configureView()
        }    }

    public func configureView()
    {
        
      self.navigationItem.title = "Conferences"

    }

    public override func awakeFromNib()
    {
        super.awakeFromNib()
    }
    
    
    public override func viewDidLoad()
    {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        self.configureView()
    }

   public override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }


    public override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "showEvent"
        {
            let indexPath = self.tableView.indexPathForSelectedRow()
            let object = events[indexPath.row]
            (segue.destinationViewController as EventViewController).detailItem = object
        }
    }
    
    
    public override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    
    public override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return events.count
    }
    
    public override func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = events[indexPath.row]
        return cell
        
    }
    


}

