//
//  opt_app_Sabina_311App.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/22/22.
//

import SwiftUI
import Firebase


@main
struct opt_app_Sabina_311App: App {
    
    @StateObject var productsViewModel = ProductsViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(productsViewModel)
        }
    }
}
