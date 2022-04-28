//
//  SettingsView1.swift
//  opt-app-Sabina-311
//
//  Created by user215930 on 4/27/22.
//

import SwiftUI
import MapKit
import UserNotifications

struct SettingsView1: View {
    @StateObject private var viewModel = SettingsViewModel()
    
    @State private var address: Bool = false
    @State private var allow: Bool = false
    @State private var appear: Bool = false
    
    var body: some View {
        NavigationView{

            Form {
                Section(header: Text("Notifications")){
                    
                    
                    Toggle("Allow notifications", isOn: $allow)

                    if allow {
                        Text("Push below for recive notifications")
                        LocalNotificationView()
                        

                    }
                    else {
                        Text("Notifications are disabled")

                    }
                    
                    
                }
                Section(header: Text("Location Map")){
                    Toggle("Allow your current location", isOn: $address)
                    
                    if address {
                        Map(coordinateRegion: $viewModel.region, showsUserLocation: true)
                            .ignoresSafeArea()
                    }
                    else {
                        Map(coordinateRegion: $viewModel.region, showsUserLocation: false)
                            .ignoresSafeArea()
                            .accentColor(Color(.systemPink))
                            .onAppear{
                                viewModel.checkIfLocationServicesIsEnabled()
                                    
                            }
                    }
                    
                }
                
                Button {
                    print("Edit process starts")
                } label: {
                    Text("Log Out")
                        .bold()
                        .frame(width: 260, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                        .cornerRadius(20)
                }
                
            }
            
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            
                
    }
        
        .navigationViewStyle(.stack)
    }
}

struct SettingsView1_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView1()
    }
}

final class SettingsViewModel: NSObject ,ObservableObject, CLLocationManagerDelegate {
    var locationManager: CLLocationManager?
    
    @Published var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 44.933334, longitude: 26.033333), span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
    
    func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
            
        } else {
            print("")
        }
    }
    
    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else {
            return
        }
        switch locationManager.authorizationStatus{
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()      case .restricted:
            print("Your Location is restricted")
        case .denied:
            print("you have denid this app location permission")
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1))
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_manager: CLLocationManager){
        checkLocationAuthorization()
    }
}
