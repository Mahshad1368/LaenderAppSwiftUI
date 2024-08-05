//
//  ContentView.swift
//  LaenderAppSwiftUI
//
//  Created by Mahshad Jafari on 01.08.24.
//

import SwiftUI

struct CountryStandardView: View {
    @EnvironmentObject var userDefaultManager: UserDefaultManager
    
    var countries: [Country] = Bundle.main.decode(fileName: "data.json")
    
    var body: some View {
        NavigationView {
           CountryLIstView(countries: countries)
            .navigationTitle("Länder")
        }
    }
}

#Preview {
    CountryStandardView().environmentObject(UserDefaultManager())
}
