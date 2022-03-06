//
//  SettingsView.swift
//  Fruitsia
//
//  Created by Ameer Hamza on 05/03/2022.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var fruit: Fruit
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "fructus", labelImage: "info.circle"))
                    {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietry fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    GroupBox(label: SettingsLabelView(labelText: "customization", labelImage: "paintbrush")) {
                        
                        Divider().padding(.vertical, 4)
                        
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased()).foregroundColor(Color.green).fontWeight(.bold)
                            } else {
                                Text("Restart".uppercased()).foregroundColor(Color.secondary).fontWeight(.bold)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                        
                    }
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "app.iphone")) {
                        
                        SettingsRowView(name: "Developer", content: "Hamza")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "Ameer Hamza", linkDestination: "https://ameerhamza.me")
                        SettingsRowView(name: "Twitter", linkLabel: "@realHamzaBhatti", linkDestination: "https://twitter.com/realHamzaBhatti")
                        SettingsRowView(name: "Instagram", linkLabel: "@dev.ameer", linkDestination: "https://instagram.com/dev.ameer")
                        SettingsRowView(name: "Version", content: "1.0")
                        
                    }
                    
                }
            }//: VSTACK
            .navigationTitle(Text("Settings"))
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                trailing:
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark").onTapGesture {
                            
                        }
                    })
            .padding()
        }//: NAVIGATIONVIEW
    }
}

//MARK: - PREVIEW

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(fruit: fruitsData[0])
    }
}
