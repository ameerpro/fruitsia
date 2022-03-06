//
//  FruitNutrientsView.swift
//  Fruitsia
//
//  Created by Ameer Hamza on 05/03/2022.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - PROPERTIES
    var fruit: Fruit
    var nutrients: [String] = ["Energy", "Sugar", "Fat", "Protiens", "Vitamins", "Minerals"]
    
    //MARK: - BODY
    var body: some View {
        GroupBox () {
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<fruit.nutrition.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack{
                        Group{
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//: GROUPBOX
        
    }
}

    //MARK: - PREVIEW
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .padding()
    }
}
