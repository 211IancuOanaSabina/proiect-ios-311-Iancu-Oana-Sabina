//
//  ProductModel.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/27/22.
//

import Foundation

class ProductMoodel: ObservableObject {
    @Published private(set) var products: [Product] = []
    
    init()
    {
        products = Product.all
    }
}
