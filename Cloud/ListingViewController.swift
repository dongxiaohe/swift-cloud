//
//  ViewController.swift
//  Cloud
//
//  Created by Danny Dong on 11/17/15.
//  Copyright © 2015 Danny Dong. All rights reserved.
//

import UIKit



class ListingViewController: UITableViewController {
    
    var listingVideos: [String]?
    
    var listingsVideos = ListingViewController.populateListings()
    
    static func populateListings() -> [ListingVideos] {
        return [
            ListingVideos(listingId: "1", listingName: "45 Pirie Street, Adelaide, SA 5000", listingAddress: "45 Pirie Street, Adelaide, SA 5000", videos: ["what a lovely video"]),
            
            ListingVideos(listingId: "2", listingName: "30 Royal, Melbourne, VIC 3000", listingAddress: "30 Royal, Melbourne, VIC 3000", videos: ["video 1", "video2", "video 3"]),
            
            ListingVideos(listingId: "3", listingName: "69 King, Melbourne, VIC 3000", listingAddress: "69 King, Melbourne, VIC 3000", videos: ["video 1", "video2", "video 3"]),
            
            ListingVideos(listingId: "4", listingName: "36 John, Melbourne, VIC 3000", listingAddress: "36 John, Melbourne, VIC 3000", videos: ["video 1", "video2", "video 3"])
        
        
        ]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        listingVideos = listingsVideos[tableView.indexPathForSelectedRow!.row].videos
        performSegueWithIdentifier("listingToVideo", sender: self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?){
        
        if (segue.identifier == "listingToVideo") {
            let viewController = segue.destinationViewController as! VideoViewController
            if let unwrappedListingVideos = listingVideos {
                viewController.listingVideos = unwrappedListingVideos
            }
        }
        
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            listingsVideos.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        }
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listingsVideos.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("listingCell", forIndexPath: indexPath)
        cell.textLabel?.text = listingsVideos[indexPath.row].listingAddress
        
        return cell
    }
}

