//
//  EventViewController.swift
//  conferenceMate
//
//  Created by Michał Ciesielski on 17/08/2014.
//  Copyright (c) 2014 Michał Ciesielski. All rights reserved.
//

import UIKit
import CoreData

class EventViewController: UIViewController

{
    
    @IBOutlet var eventNameLabel : UILabel
    @IBOutlet var eventTimeLabel : UILabel
    @IBOutlet var eventPlaceLabel : UILabel
    @IBOutlet var descriptionLabel : UILabel
    @IBOutlet var participantsTableView : UITableView
    
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
        eventNameLabel.text = self.detailItem as String
        
        
        
        
        
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    
    
}
