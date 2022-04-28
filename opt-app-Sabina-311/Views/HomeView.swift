//
//  HomeView.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/26/22.
//

import SwiftUI

struct HomeView: View {
    
    @StateObject var cartManager = CartManager()
    @EnvironmentObject var productVM :ProductsViewModel
    
    var body: some View {
        NavigationView {
            
            ScrollView {
                ProductsList(products: productVM.products)
                    .navigationTitle("Moft Restaurant")
                    .toolbar {
                        NavigationLink {
                                        CartView().environmentObject(cartManager)
                                    } label: {
                                        CartButton(numberOfProducts: cartManager.products.count)
                                        
                                    }
                                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ProductsViewModel())
    }
}
