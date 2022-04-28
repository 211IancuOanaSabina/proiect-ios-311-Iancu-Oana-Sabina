//
//  Data.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/26/22.
//

//import SwiftUI
//
//struct Post: Codable(), Identifiable{
//    let mealId =  UUID()
//    var mealStr: String
//    var strMealThumb : String
//
//}
//
//class Api {
//    func getPosts(completion: @escaping ([Post]) -> ()) {
//        guard let url = URL(string: "https://www.themealdb.com/api/json/v1/1/search.php?f=a") else { return }
//        
//        URLSession.shared.dataTask(with: url) { (data, _, _) in
//            let posts = try! JSONDecoder().decode([Post].self, from: data!)
//            DispatchQueue.main.async {
//                completion(posts)
//            }
//
//        }
//        .resume()
//   
//    
//    }
//}


