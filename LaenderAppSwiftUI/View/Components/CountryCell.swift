//
//  CountryCell.swift
//  LaenderAppSwiftUI
//
//  Created by Mahshad Jafari on 02.08.24.
//

import SwiftUI

struct CountryCell: View {
    
    @EnvironmentObject var userDefaultManager: UserDefaultManager

    let country: Country
    
    var body: some View {
        HStack(spacing: 15){
            Image(country.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(
                    Circle()
                        .stroke(Color.black, lineWidth: 1))
            
            VStack(alignment: .leading, spacing: 6) {
               
                Text(country.countryName)
                    .font(.headline)
                
                Button(action: {userDefaultManager.toggleFavoritesStatus(for: country)}) {
                    Image(systemName: userDefaultManager.isCountryFavorite(country: country) ? "suit.heart.fill" : "suit.heart" )
                            
                        .font(.headline)
                        .foregroundColor(.pink)   
                }
                .buttonStyle(BorderlessButtonStyle())
            }
        }
        .padding([.top,.bottom], 10)
    }
}

#Preview {
    ZStack {
        let countries: [Country] = Bundle.main.decode(fileName: "data.json")
        
        CountryCell(country: countries[0]).environmentObject(UserDefaultManager())
    }
}
