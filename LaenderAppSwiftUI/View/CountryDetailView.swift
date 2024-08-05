//
//  CountryDetailView.swift
//  LaenderAppSwiftUI
//
//  Created by Mahshad Jafari on 01.08.24.
//

import SwiftUI

struct CountryDetailView: View {
    
    @EnvironmentObject var userDefaultManager: UserDefaultManager
    
    let country: Country
    
    var body: some View {
        VStack {
            Image(country.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 2)
                )
                .padding()
            
            List(country.details, id: \.self){ detail in
                Text(detail)
                    .listStyle(InsetGroupedListStyle())
                
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {userDefaultManager.toggleFavoritesStatus(for: country)}) {
                        Image(systemName: userDefaultManager.isCountryFavorite(country: country) ? "suit.heart.fill" : "suit.heart")
                            .font(.title3)
                            .foregroundColor(.pink)
                    }
                }
            }
        }
        .navigationBarTitle(country.countryName)

    }
}

#Preview {
ZStack {
        let countries: [Country] = Bundle.main.decode(fileName: "data.json")
        
    CountryDetailView(country: countries[0]).environmentObject(UserDefaultManager())
    }
}
