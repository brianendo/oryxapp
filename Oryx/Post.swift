//
//  Post.swift
//  Oryx
//
//  Created by Brian Endo on 7/22/15.
//  Copyright (c) 2015 Oryx. All rights reserved.
//

import Foundation

class Post {
    var id: Int
    var uid: Int
    var username: String
    var author: String
    var authorname: String
    var name: String
    var attendees: [Int]
    var endorsements: Int
    var bookmark: Int
    var going: Int
    
    init(id:Int, uid:Int, username:String, author:String, authorname:String, name:String, attendees:[Int], endorsements:Int, bookmark:Int, going:Int) {
        
        self.id = id
        self.uid = uid
        self.username = username
        self.author = author
        self.authorname = authorname
        self.name = name
        self.attendees = attendees
        self.endorsements = endorsements
        self.bookmark = bookmark
        self.going = going
    }
    
    func toJSON() -> String {
        return ""
    }
    
}