//
//  ContentView.swift
//  Fruitsia
//
//  Created by Ameer Hamza on 14/02/2022.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
    @State var isShowingSettings: Bool = false
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(fruits) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)

                    }
                    
                }
            }//: LIST
            .navigationTitle("Fruitsia")
            .navigationBarItems(trailing:
                Button(action: {
                isShowingSettings = true
            }) {
                Image(systemName: "slider.horizontal.3")
            })
            .sheet(isPresented: $isShowingSettings) {
                SettingsView(fruit: fruitsData[0])
            }
        }//: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
