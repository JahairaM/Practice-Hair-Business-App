//
//  ContentView.swift
//  Aniya's Business
//
//  Created by Jahaira Maxwell-Myers on 12/8/22.
//

import SwiftUI
import UIKit
import MapKit

struct MyDesign: View {
    var body: some View {
        
        ScrollView {
            //LinearGradient(gradient: Gradient(colors: [Color(.displayP3, red: 242/255, green: 212/255, blue: 223/255), Color(.displayP3, red: 254/255, green: 251/255, blue: 192/255)]), startPoint: .bottom, endPoint: .top)
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color(.displayP3, red: 242/255, green: 212/255, blue: 223/255), Color(.displayP3, red: 254/255, green: 251/255, blue: 192/255)]),
                               startPoint: .bottomLeading, endPoint: .topTrailing)
                .ignoresSafeArea()
                VStack {
                    Text("Hey Amber 😊")
                        .font(.largeTitle.weight(.bold))
                    Text("Upcoming Appointment: Aniya 3pm")
                    Image("myImage")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .mask {
                            Circle()
                        }
                    ZStack {
                    }
                    ScrollView(.horizontal) {
                        HStack {
                            ZStack {
                            }
                        }
                    }
                    HStack {
                    }
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.large)
                            .symbolRenderingMode(.monochrome)
                            .padding()
                            .foregroundColor(.primary)
                            .font(.largeTitle.weight(.bold))
                        Image(systemName: "heart")
                            .imageScale(.large)
                            .symbolRenderingMode(.monochrome)
                            .padding()
                            .font(.system(.largeTitle, design: .monospaced).weight(.bold))
                        Image(systemName: "shareplay")
                            .symbolRenderingMode(.monochrome)
                            .padding()
                            .font(.largeTitle.weight(.bold))
                    }
                    HStack {
                        Image(systemName: "square.and.arrow.up.circle")
                            .imageScale(.large)
                            .symbolRenderingMode(.monochrome)
                            .padding()
                            .font(.largeTitle.weight(.bold))
                        Image(systemName: "calendar.badge.plus")
                            .imageScale(.large)
                            .symbolRenderingMode(.monochrome)
                            .padding()
                            .font(.largeTitle.weight(.bold))
                        Image(systemName: "message")
                            .imageScale(.large)
                            .symbolRenderingMode(.monochrome)
                            .padding()
                            .font(.largeTitle.weight(.bold))
                    }
                    
                    Map(coordinateRegion: .constant(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 42.32938999999997, longitude: -83.04493299999996), latitudinalMeters: 24996.58, longitudinalMeters: 44602.05)),
                        annotationItems: [PlacePin(latitude: 42.32939, longitude: -83.044933)],
                        annotationContent: { MapMarker(coordinate: $0.location, tint: .primary) })
                    .padding(.top)
                }
                .frame(maxWidth: .infinity)
                .clipped()
                .padding(.top, 98)
                .padding(.bottom, 150)
            
            //        .overlay(alignment: .top) {
            //            VStack(spacing: 1) {
            //                HStack {
            //                    Text("9:41")
            //                        .frame(width: 109)
            //                        .clipped()
            //                        .font(.body.weight(.semibold))
            //                    Spacer()
            //                    HStack(spacing: 5) {
            //                   Image(systemName: "cellularbars")
            //                .imageScale(.small)
            //                        Image(systemName: "wifi")
            //                        .imageScale(.small)
            //                        Image(systemName: "battery.100")
            //                        .symbolRenderingMode(.hierarchical)
            //                        .font(.body.weight(.light))
            //                        }
            //                   .frame(width: 109)
            //                   .clipped()
            //                   .font(.body.weight(.semibold))
            //                   }
            //                .padding(.horizontal)
            //               .padding(.top, 5)
            //               .frame(maxWidth: .infinity)
            //                .clipped()
            //                .frame(height: 53)
            //                .clipped()
            //                HStack(spacing: 0) {
            //                    VStack {
            //                        Text("Hello Amber")
            //                       .font(.headline)
            //                        Text("Upcoming Appointment: Aniya, Saturday at 3pm")
            //                        .foregroundColor(.red)
            //                       }
            //                   }
            //                .frame(height: 44)
            //                .clipped()
            //              }
            //          .frame(height: 98)
            //           .clipped()
            //          .background {
            //                Rectangle()
            //                    .fill(.clear)
            //                    .background(Material.bar)
            //
            //            }
            //
            //        }
            .overlay(alignment: .bottom) {
                VStack(spacing: 0) {
                    //  Divider()
                    HStack(spacing: 10) {
                        VStack(spacing: 4) {
                            Image(systemName: "calendar")
                                .imageScale(.large)
                                .symbolRenderingMode(.monochrome)
                            Text("Schedule ")
                                .font(.caption2)
                        }
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .frame(height: 45)
                        .clipped()
                        VStack(spacing: 4) {
                            Image(systemName: "square.grid.2x2.fill")
                                .imageScale(.large)
                            Text("Browse")
                                .font(.caption2)
                        }
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .frame(height: 45)
                        .clipped()
                        VStack(spacing: 4) {
                            Image(systemName: "timer")
                                .imageScale(.large)
                                .symbolRenderingMode(.monochrome)
                            Text("Upcoming")
                                .font(.caption2)
                        }
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .frame(height: 45)
                        .clipped()
                        .foregroundColor(.blue)
                        VStack(spacing: 4) {
                            Image(systemName: "heart.fill")
                                .imageScale(.large)
                                .symbolRenderingMode(.monochrome)
                            Text("Favorite")
                                .font(.caption2)
                        }
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .frame(height: 45)
                        .clipped()
                        VStack(spacing: 4) {
                            Image(systemName: "magnifyingglass")
                                .imageScale(.large)
                            Text("Search")
                                .font(.caption2)
                        }
                        .frame(maxWidth: .infinity)
                        .clipped()
                        .frame(height: 45)
                        .clipped()
                    }
                    .padding(.horizontal, 15)
                    .padding(.top, 5)
                    .foregroundColor(.secondary)
                }
                .frame(height: 84, alignment: .top)
                .clipped()
                .background {
                    Rectangle()
                        .fill(.clear)
                        .background(Material.bar)
                }
            }
        }
    }
    class ViewController : UIViewController, CLLocationManagerDelegate {
        let locationManager = CLLocationManager()
        
        override func viewDidLoad() {
            //super.override
            func viewDidLoad() {
                self.viewDidLoad()
                locationManager.delegate = self
                locationManager.desiredAccuracy = kCLLocationAccuracyBest
                locationManager.requestWhenInUseAuthorization()
                locationManager.requestLocation()
            }
            struct MyDesign_Previews: PreviewProvider {
                static var previews: some View {
                    MyDesign()
                }
            }
            
            struct PlacePin: Identifiable {
                let id: String
                let location: CLLocationCoordinate2D
                
                init(id: String = UUID().uuidString, latitude: Double, longitude: Double) {
                    self.id = id
                    self.location = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
                }
            }
        }
    }
}
                        }
                        
                        
