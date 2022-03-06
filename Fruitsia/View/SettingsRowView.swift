//
//  SettingsRowView.swift
//  Fruitsia
//
//  Created by Ameer Hamza on 05/03/2022.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack{
                
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if(content != nil){
                    Text(content!)
                }
                else if(linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: linkDestination!)!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Hamza", linkLabel: "Instagram", linkDestination: "https://www.instagram.com/dev.ameer")
    }
}
