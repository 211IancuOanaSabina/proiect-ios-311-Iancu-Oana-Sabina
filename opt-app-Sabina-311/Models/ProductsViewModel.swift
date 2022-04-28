//
//  ProductsViewModel.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/26/22.
//

import Foundation

class ProductsViewModel: ObservableObject{
    @Published private(set) var products: [Product] = []
    
    
    init() {
        products = Product.all
    }
    
    func addProduct(product: Product){
        products.append(product)
    }
    
}
