//
//  FruitModel.swift
//  Fruitsia
//
//  Created by Ameer Hamza on 05/03/2022.
//

import SwiftUI

// MARK: FRUITS DATA Model

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
