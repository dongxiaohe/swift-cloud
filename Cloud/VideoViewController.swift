//
//  VideoViewController.swift
//  Cloud
//
//  Created by Danny Dong on 11/18/15.
//  Copyright © 2015 Danny Dong. All rights reserved.
//

import UIKit

class VideoViewController: UITableViewController {

    var listingVideos: ListingVideos?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listingVideos!.videos.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("videosCell", forIndexPath: indexPath)
        cell.textLabel?.text = listingVideos!.videos[indexPath.row]
        
        return cell
    }
    
}
