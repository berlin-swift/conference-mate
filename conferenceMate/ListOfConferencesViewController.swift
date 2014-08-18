//
//  MasterViewController.swift
//  conferenceMate
//
//  Created by Michał Ciesielski on 15/08/2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit
import CoreData

class ListOfConferencesViewController: UITableViewController

{

    var managedObjectContext: NSManagedObjectContext? = nil
    var conferences: String[] = ["conference1", "conference2", "conference3"];

    
    func createSomeDataForCoreData()
    {
        NSLog("create data");
        //here is the place for syncing core data with data from server
    }

    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.createSomeDataForCoreData()
        self.navigationItem.title = "Conferences"
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    // #pragma mark - Segues

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if segue.identifier == "showConference"
        {
            let indexPath = self.tableView.indexPathForSelectedRow()
            let object = conferences[indexPath.row]
            (segue.destinationViewController as ConferenceViewController).detailItem = object
        }
    }

    // #pragma mark - Table View

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1;
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return conferences.count;
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        cell.textLabel.text = conferences[indexPath.row]
        return cell
    }

}

