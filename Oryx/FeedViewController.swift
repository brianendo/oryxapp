//
//  FeedViewController.swift
//  Oryx
//
//  Created by Brian Endo on 7/21/15.
//  Copyright (c) 2015 Oryx. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var eventArray: [EventModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let event1 = EventModel(eventTitle: "Gareth Emery", poster: "1015Folsom", endorser: "Brian", going: "5", eventImage: UIImage(named: "GarethEmery")!)
        let event2 = EventModel(eventTitle: "Oliver Heldens", poster: "RubySkye", endorser: "Chris", going: "15", eventImage: UIImage(named: "OliverHeldens")!)
        let event3 = EventModel(eventTitle: "Tchami", poster: "InfusionLounge", endorser: "", going: "10", eventImage: UIImage(named: "Tchami1")!)
        
        eventArray = [event1, event2, event3]
        
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // UITableViewDataSource
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let thisEvent = eventArray[indexPath.row]
        
        var cell: FeedTableViewCell = tableView.dequeueReusableCellWithIdentifier("feedCell") as FeedTableViewCell
        
        cell.eventTitle.text = thisEvent.eventTitle
        cell.posterLabel.text = thisEvent.poster
        cell.endorserLabel.text = thisEvent.endorser
        cell.goingLabel.text = thisEvent.going
        cell.eventImageView.image = thisEvent.eventImage
        
        return cell
    }
    
    // UITableViewDelegate
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
    }
    

}
