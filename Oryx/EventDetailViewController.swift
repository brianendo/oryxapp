//
//  EventDetailViewController.swift
//  Oryx
//
//  Created by Brian Endo on 7/21/15.
//  Copyright (c) 2015 Oryx. All rights reserved.
//

import UIKit

class EventDetailViewController: UITableViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    @IBOutlet weak var eventImageView: UIImageView!
    @IBOutlet weak var posterLabel: UILabel!

    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var collectionViewLayout: UICollectionViewFlowLayout!
    
    var eventDetailModel: EventModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.title = eventDetailModel.eventTitle
        self.eventImageView.image = eventDetailModel.eventImage
        self.posterLabel.text = eventDetailModel.poster
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        let height: CGFloat = 80.0
        let width = self.view.bounds.size.width
        
        let cellSize = CGSize(width: width, height: height)
        
        if (!CGSizeEqualToSize(self.collectionViewLayout.itemSize, cellSize)) {
            self.collectionViewLayout.itemSize = cellSize;
            self.collectionViewLayout.invalidateLayout()
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
