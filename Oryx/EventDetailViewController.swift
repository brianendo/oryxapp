//
//  EventDetailViewController.swift
//  Oryx
//
//  Created by Brian Endo on 7/21/15.
//  Copyright (c) 2015 Oryx. All rights reserved.
//

import UIKit

class EventDetailViewController: UIViewController {

    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var posterLabel: UILabel!

    var eventDetailModel: EventModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = eventDetailModel.eventTitle
        self.eventImageView.image = eventDetailModel.eventImage
        self.posterLabel.text = eventDetailModel.poster
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
