//
//  CountryLIstView.swift
//  LaenderAppSwiftUI
//
//  Created by Mahshad Jafari on 05.08.24.
//

import SwiftUI

struct CountryLIstView: View {
    @EnvironmentObject var userDefaultManager: UserDefaultManager
    
    let countries: [Country]
    
    
    var body: some View {
        List(countries){ country in
            NavigationLink(destination: CountryDetailView(country: country)) {
                CountryCell(country: country)
            }
        }
    }
}

#Preview {
    ZStack{
        let countries: [Country] = Bundle.main.decode(fileName: "data.json")

        CountryLIstView(countries: countries).environmentObject(UserDefaultManager())
    }
    
}
