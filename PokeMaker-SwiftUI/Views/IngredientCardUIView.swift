//
//  IngredientCardUIView.swift
//  PokeMaker-SwiftUI
//
//  Created by Alexia Fernanda Saucedo Romero on 24/01/24.
//

import SwiftUI

struct IngredientCardUIView: View {
    
    let ing = Ingrediente(id: "1", name: "Shrimp", category: "Protein")
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color(uiColor: UIColor(red: 0.97, green: 0.88, blue: 0.85, alpha: 1.00)))
                .frame(height: 500)
                .padding()
            VStack(spacing: 20) {
                Text("PROTEIN: \(ing.name)")
                    .bold()
                IngredienteView(n: ing.id)
                    .padding()
                Button("Add to my Bowl"){
                    //self.ingredient = ingredients.randomElement()!
                } .buttonStyle(.borderedProminent)
                Button("Another ingredient"){
                    
                }
            } .frame(height: 500)
                
        }
    }
}

struct IngredienteView: View {
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

#Preview {
    IngredientCardUIView()
}

struct Ingrediente: Identifiable {
    let id: String
    let name: String
    let category: String
}

let ingredientes = [
    Ingrediente(id: "1", name: "Shrimp", category: "Protein"),
    Ingrediente(id: "2", name: "Salmon", category: "Protein"),
    Ingrediente(id: "3", name: "Chicken", category: "Protein")
]
