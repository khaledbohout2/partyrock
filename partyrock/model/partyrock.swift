//
//  partyrock.swift
//  partyrock
//
//  Created by Khaled Bohout on 1/17/19.
//  Copyright © 2019 Khaled Bohout. All rights reserved.
//

import Foundation

class partyrock {
    
    private var _imageurl : String!
    private var _videourl : String!
    private var _videotitle : String!
    
    var imageurl : String {
        return _imageurl
    }
    var videourl : String {
        return _videourl
    }
    var videotitle : String {
        return _videotitle
    }
    
    
    init(imageurl : String , videourl : String , videotitle : String) {
        _imageurl = imageurl
        _videourl = videourl
        _videotitle = videotitle
    }
    
    
}
