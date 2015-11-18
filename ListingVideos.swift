//
//  ListingVideos.swift
//  Cloud
//
//  Created by Danny Dong on 11/18/15.
//  Copyright © 2015 Danny Dong. All rights reserved.
//

import Foundation

class ListingVideos: NSObject {

    let listingId: String
    let listingName: String
    let listingAddress: String
    
    let videos: [String]
    
    
    init(listingId: String, listingName: String, listingAddress: String, videos: [String]) {
        self.listingId = listingId
        self.listingName = listingName
        self.listingAddress = listingAddress
        self.videos = videos
    }
    
}
