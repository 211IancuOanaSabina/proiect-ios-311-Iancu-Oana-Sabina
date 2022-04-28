//
//  ProductAPI.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/25/22.
//

import Foundation

let headers = [
    "X-RapidAPI-Host": "cafe-cookies.p.rapidapi.com",
    "X-RapidAPI-Key": "ef91c2344cmsh5635f24575c01ffp1332d1jsn0948070c3a58"
]

let request = NSMutableURLRequest(url: NSURL(string: "https://cafe-cookies.p.rapidapi.com/")! as URL,
                                        cachePolicy: .useProtocolCachePolicy,
                                    timeoutInterval: 10.0)
