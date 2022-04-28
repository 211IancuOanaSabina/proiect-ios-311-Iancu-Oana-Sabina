//
//  ContentView.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/22/22.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var cartManager = CartManager()
    
    
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    
    var body: some View {
        
        NavigationView {
            
            TabBarView(logged: false)
            
                
                .padding()
            ScrollView {
                
                HomeView()
                
            }
            
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ProductsViewModel())
    }
}
