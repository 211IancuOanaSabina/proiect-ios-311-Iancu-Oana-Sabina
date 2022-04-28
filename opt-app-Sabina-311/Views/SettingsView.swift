//
//  SettingsView.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/25/22.
//

import SwiftUI
import UIKit
import MapKit


    //class ViewController: UIViewController{
    
    //@IBOutlet var mapView: MKMapView!
    
//    let mapView: MKMapView = {
//        let map = MKMapView()
//        map.overrideUserInterfaceStyle = .light
//        return map
//    }()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    func setMapConstraints(){
//        view.addSubview(mapView)
//
//        map.translatesAutoresizingMaskIntoConstraints = false
//        mapView.topAnchor.constraint(equalTo: self.view.topAnchor)
//    }
//}

struct SettingsView: View {
    
    
    var body: some View {
        NavigationView{
            ScrollView {
                Form {
                    Section(header: Text("Notifications")) {
                        Toggle(isOn: .constant(true)) {
                            Text("Allow notifications")
                        }
                    }
                    
                    Section(header: Text("Acces location")) {
                        Toggle(isOn: .constant(true)) {
                            Text("Allow acces location")
                        }
                    }
                    
                    Section(header: Text("Favourite Shop")){
                        
                    }

                }
                .navigationTitle("Settings")
            }
        }
            }
}
            

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
