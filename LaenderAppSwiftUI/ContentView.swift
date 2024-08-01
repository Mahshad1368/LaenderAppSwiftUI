//
//  ContentView.swift
//  LaenderAppSwiftUI
//
//  Created by Mahshad Jafari on 01.08.24.
//

import SwiftUI

struct ContentView: View {
    var countries: [Country] = Bundle.main.decode(fileName: "data.json")
    
    var body: some View {
        NavigationView {
            List(countries){ country in
                HStack{
                    Image(country.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .overlay(
                            Circle()
                                .stroke(Color.black, lineWidth: 1))
                    
                    Text(country.countryName)
                        .font(.headline)
                }
                .padding([.top,.bottom], 10)
           
                }
                .navigationTitle("Länder")
            }
           
        }
    }

#Preview {
    ContentView()
}
