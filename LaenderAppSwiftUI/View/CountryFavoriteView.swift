//
//  CountryFavoriteView.swift
//  LaenderAppSwiftUI
//
//  Created by Mahshad Jafari on 05.08.24.
//

import SwiftUI

struct CountryFavoriteView: View {
    
    @EnvironmentObject var userDefaultManager: UserDefaultManager
    
    
    var body: some View {
        NavigationView {
            
            VStack{
                if userDefaultManager.favorites.isEmpty {
                    EmptyStateView()
                }else {
                    CountryLIstView(countries:
                                        userDefaultManager.getAllFavoriteCountries())
                }
                
            }
            .navigationBarTitle("Favoriten")
            
        }
    }
}

#Preview {
    CountryFavoriteView().environmentObject(UserDefaultManager())
}
