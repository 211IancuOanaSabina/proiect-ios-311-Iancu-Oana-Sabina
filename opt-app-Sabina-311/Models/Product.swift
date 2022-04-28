//
//  Product.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/22/22.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Int
    let description: String
    let datePublished:String
}

extension Product {
    static let all: [Product] = [Product(name: "Berries Cake", image: "https://c4.wallpaperflare.com/wallpaper/507/761/166/food-berries-cake-dessert-wallpaper-preview.jpg", price: 27, description: "ceva1", datePublished: "2021-05-13"),
                                 Product(name: "Chocolate Cake", image: "https://c4.wallpaperflare.com/wallpaper/628/575/626/cake-strawberries-food-fruit-wallpaper-preview.jpg", price: 30, description: "ceva2", datePublished: "2020-03-11"),
                                 Product(name: "Peanuts Cake", image: "https://c4.wallpaperflare.com/wallpaper/266/477/281/cake-food-nuts-chocolate-cake-wallpaper-preview.jpg", price: 25, description: "ceva3", datePublished: "2014-08-17"),
                                 Product(name: "Rainbow Cake", image: "https://c4.wallpaperflare.com/wallpaper/93/434/527/birthday-colorful-cake-cake-wallpaper-preview.jpg", price: 20, description: "ceva4", datePublished: "2018-09-06"),
                                 Product(name: "Strawberry Cake", image: "https://c4.wallpaperflare.com/wallpaper/937/382/340/cake-strawberries-food-wallpaper-preview.jpg", price: 32, description: "ceva5", datePublished: "2016-08-27"),
                                 Product(name: "Melon Cake", image: "https://c4.wallpaperflare.com/wallpaper/246/206/360/cream-cake-cake-cherry-wallpaper-preview.jpg", price: 22, description: "ceva6", datePublished: "2015-07-03")]
}

