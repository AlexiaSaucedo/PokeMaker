//
//  NutritionList.swift
//  PokeMaker-SwiftUI
//
//  Created by Alexia Fernanda Saucedo Romero on 23/01/24.
//

import SwiftUI

struct NutritionList: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        Text("Nutrition Facts")
            .bold()
            .font(.title)
        
        List(nutrients) { nutrient in
            HStack {
                Text(nutrient.label)
                Spacer()
                Text(String(nutrient.quantity))
                Text(nutrient.unit)
            }
        }
    }
} 

#Preview {
    NutritionList()
}


struct Nutrient : Identifiable {
    let id = UUID()
    let label : String
    let quantity : Double
    let unit : String
}

let nutrients = [
    Nutrient(label: "Calories", quantity: 1774, unit: "kcal"),
    Nutrient(label: "Total Fat", quantity: 18.3, unit: "g"),
    Nutrient(label: "Protein", quantity: 71, unit: "g")
]

