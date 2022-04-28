//
//  ProductsList.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/26/22.
//

import SwiftUI

struct ProductsList: View {
    
    var products: [Product]
    var body: some View {
        VStack {
            HStack{
                Text("\(products.count) \(products.count > 1 ? "products": "product")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.6)
                
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
                ForEach(products) { products in
                    NavigationLink(destination: ProductView(product: products)){
                        ProductCard(product: products)
                    }
                    
                }
            }
            
        }
        .padding(.horizontal)
    }
}

struct ProductsList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            ProductsList(products: Product.all)
            
        }
    }
}
