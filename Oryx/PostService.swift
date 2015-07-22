//
//  PostService.swift
//  Oryx
//
//  Created by Brian Endo on 7/22/15.
//  Copyright (c) 2015 Oryx. All rights reserved.
//

import Foundation

class PostService {
    
    var settings: Settings!
    
    init() {
        self.settings = Settings()
    }
    
    func getPosts(callback:(NSDictionary) -> ()) {
        request(settings.viewPosts, callback: callback)
    }
    
    func request(url:String, callback:(NSDictionary) -> ()) {
        var nsURL = NSURL(string: url)
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(nsURL!) {
            (data, response, error) in
            var error:NSError?
            var response = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
            callback(response)
        }
        task.resume()
    }
    
    
}