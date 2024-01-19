//
//  ContentView.swift
//  PokeMaker-SwiftUI
//
//  Created by Alexia Fernanda Saucedo Romero on 16/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var ingredient: Ingredient
    
    var body: some View {
        VStack {
            PokeCard(ing: ingredient)
            Text("Poke Bowls")
                .font(.largeTitle)
                .bold()
            Text("Not sure which one?")
            Button("Give me some ingredients"){
                self.ingredient = ingredients.randomElement()!
            } .buttonStyle(.borderedProminent)

        }
      
    }
}

#Preview {
    ContentView(ingredient: Ingredient(id: "1", name: "Shrimp", category: "Protein"))
}

struct PokeCard: View {
    
    let ing : Ingredient
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color(uiColor: UIColor(red: 0.97, green: 0.88, blue: 0.85, alpha: 1.00)))
                .frame(height: 500)
                .padding()
            VStack {
                Text("PROTEIN: \(ing.name)")
                    .bold()
                    .padding()
                IngredientView(n: ing.id)
                Image("poke1")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                .padding()
            } .frame(height: 500)
        }
    }
}

struct IngredientView: View {
    let n: String
    var body: some View {
        
        ZStack {
            Circle()
                .foregroundStyle(.white)
            Image("ing\(n)")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
        }.frame(width: 150, height: 150)
    }
}

//Continue with Networking

struct Ingredient: Identifiable {
    let id: String
    let name: String
    let category: String
}

let ingredients = [
    Ingredient(id: "1", name: "Shrimp", category: "Protein"),
    Ingredient(id: "2", name: "Salmon", category: "Protein"),
    Ingredient(id: "3", name: "Chicken", category: "Protein")
]
