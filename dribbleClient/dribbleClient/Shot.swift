//
//  Shot.swift
//  dribbleClient
//
//  Created by Thiago Lioy on 6/9/14.
//  Copyright (c) 2014 Thiago Lioy. All rights reserved.
//


class Shot: NSObject {
    var title:String
    var imageUrl:String
    
    init(title:String = "", imageUrl:String = "") {
        self.title = title
        self.imageUrl = imageUrl
        super.init()
    }
    
    func parse(json: NSDictionary) {
        if let title = json["title"] as? String{
            self.title = title
        }
        if let imageUrl = json["image_400_url" ] as? String{
            self.imageUrl = imageUrl
        }
    }
   
}
