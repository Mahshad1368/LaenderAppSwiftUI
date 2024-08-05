//
//  UserDefaultManager.swift
//  LaenderAppSwiftUI
//
//  Created by Mahshad Jafari on 02.08.24.
//

import Foundation

class UserDefaultManager: ObservableObject {
   
    private static let favoritesKey = "countryFavorites"
    
    @Published
    var favorites: [Int] = UserDefaults.standard.array(forKey: UserDefaultManager.favoritesKey) as? [Int] ?? Array<Int>(){
        didSet{
            UserDefaults.standard.setValue(self.favorites, forKey: UserDefaultManager.favoritesKey)
        }
    }
    
    let AllCountries: [Country] = Bundle.main.decode(fileName: "data.json")
    
    
    
    func toggleFavoritesStatus(for country: Country){
        if favorites.contains(country.id){
            favorites = favorites.filter { $0 != country.id }
        }else {
            favorites.append(country.id)
        }
    }
    
    func isCountryFavorite(country: Country) -> Bool {
        favorites.contains(country.id)
    }
    
    
    func getAllFavoriteCountries() -> [Country] {
        return AllCountries.filter {
            
            favorites.contains($0.id)
        }
    }
}
