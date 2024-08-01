//
//  Country.swift
//  LaenderAppSwiftUI
//
//  Created by Mahshad Jafari on 01.08.24.
//

import Foundation

struct Country: Decodable, Identifiable {
    
    let id : Int
    let countryName: String
    let imageName: String
    let details: [String]
}
