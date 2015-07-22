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
    
//      var postsCollection = [Post]()
//      var service:PostService!
    // Use this array to pull the feed.json
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let event1 = EventModel(eventTitle: "Gareth Emery", poster: "1015Folsom", endorser: "Brian", going: "5", eventImage: UIImage(named: "GarethEmery")!)
        let event2 = EventModel(eventTitle: "Oliver Heldens", poster: "RubySkye", endorser: "Chris", going: "15", eventImage: UIImage(named: "OliverHeldens")!)
        let event3 = EventModel(eventTitle: "Tchami", poster: "InfusionLounge", endorser: "", going: "10", eventImage: UIImage(named: "Tchami1")!)
        
        eventArray = [event1, event2, event3]
        
//        service = PostService()
//        service.getPosts {
//            (response) in
//            self.loadPosts(response["posts"]! as NSArray)
//        }
        // Add these for postCollection
        
        self.tableView.reloadData()
    }
    
//    func loadPosts(posts:NSArray) {
//        for post in posts {
//            var post = post["Post"]! as NSDictionary
//            var id = post["id"]! as Int
//            var uid = post["uid"]! as Int
//            var username = post["username"]! as String
//            var author = post["author"]! as Int
//            var authorname = post["authorname"]! as String
//            var name = post["name"]! as String
//            var attendees = post["attendees"]! as [Int]
//            var endorsements = post["endorsements"]! as Int
//            var bookmark = post["bookmark"]! as Int
//            var going = post["going"]! as Int
//            var postObj = Post(id: id, uid: uid, username: username, author: author, authorname: authorname, name: name, attendees: attendees, endorsements: endorsements, bookmark: bookmark, going: going)
//            postsCollection.append(postObj)
//            dispatch_async(dispatch_get_main_queue()) {
//                self.tableView.reloadData()
//            }
//
//        }
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "showEventDetail" {
            let detailVC: EventDetailViewController = segue.destinationViewController as EventDetailViewController
            let indexPath = self.tableView.indexPathForSelectedRow()
            let thisEvent = eventArray[indexPath!.row]
            detailVC.eventDetailModel = thisEvent
        }
        
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
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        performSegueWithIdentifier("showEventDetail", sender: self)
        
    }
    

}
