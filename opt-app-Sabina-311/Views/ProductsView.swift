////
////  ProductsView.swift
////  opt-app-Sabina-311
////
////  Created by user215930 on 4/25/22.
////
//
//import SwiftUI
//
//struct ProductsView: View {
//    
////    var products: [Product]
////    var body: some View {
////        VStack {
////            HStack{
////                Text("\(products.count) \(products.count > 1 ? "products": "product")")
////                    .font(.headline)
////                    .fontWeight(.medium)
////                    .opacity(0.6)
////
////                Spacer()
////            }
////            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
////                ForEach(products) { products in
////                    ProductCard(product: products)
////
////                }
////            }
////
////        }
////        .padding(.horizontal)
//    }
//}
//    
////    @StateObject var cartManager = CartManager()
////
////    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
////
////    var body: some View {
////        NavigationView {
////
////            ScrollView {
////                LazyVGrid(columns: columns, spacing:20) {
////                    ProductsList(pro)
////                }
////                .padding()
////            }
////
////            .navigationTitle("Moft Bakery")
////            .toolbar {
////
////
////                NavigationLink {
////                                CartView().environmentObject(cartManager)
////                            } label: {
////                                CartButton(numberOfProducts: cartManager.products.count)
////
////                            }
////                        }
////
////        }
////
////        .navigationViewStyle(StackNavigationViewStyle())
////    }
//
//struct ProductsView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProductsView(products: Product.all)
//    }
//}
