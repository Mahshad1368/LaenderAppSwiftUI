//
//  LaenderAppSwiftUIApp.swift
//  LaenderAppSwiftUI
//
//  Created by Mahshad Jafari on 01.08.24.
//

import SwiftUI

@main
struct LaenderAppSwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            TabView{
                CountryStandardView()
                    .tabItem{
                    Image(systemName: "flag")
                        Text("Länder")
                }
                
                CountryFavoriteView()
                    .tabItem {
                        Image(systemName: "suit.heart")
                        Text("Favoriten")
                    }
            }
            .environmentObject(UserDefaultManager())
        }
    }
}
