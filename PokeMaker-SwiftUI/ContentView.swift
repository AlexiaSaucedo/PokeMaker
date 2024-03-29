//
//  ContentView.swift
//  PokeMaker-SwiftUI
//
//  Created by Alexia Fernanda Saucedo Romero on 16/01/24.
//

import SwiftUI

class GlobalData: ObservableObject {
    @Published var recipe: [String] = []
    @Published var ingredient : Ingredient = Ingredient(id: "1", name: "Shrimp", category: "Protein", img: "ing1", quantityEx: "20 g")
    
}

struct ContentView: View {
    
    //@State var ingredient: Ingredient
    @StateObject var globalData = GlobalData()
    
    var body: some View {
        VStack {
            PokeCard(ing: globalData.ingredient)
            Text("Poke Bowls")
                .font(.largeTitle)
                .bold()
            Text("Not sure which one?")
            Button("Give me some ingredients"){
                globalData.ingredient = ingredients.randomElement()!
            } .buttonStyle(.borderedProminent)

        }.environmentObject(globalData)
      
    }
}

#Preview {
    ContentView()
}

struct PokeCard: View {
    
    @EnvironmentObject var globalData: GlobalData
    let ing : Ingredient
    //var recipe: [String]
    @State var quantity: String = ""
    
    var body: some View {
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color(uiColor: UIColor(red: 0.97, green: 0.88, blue: 0.85, alpha: 1.00)))
                .frame(height: 500)
                .padding()
            VStack(spacing: 10) {
                Text("Choose your \(ing.category)")
                    .bold()
                    .padding([.top], 20)
                IngredientView(image: ing.img)
                HStack {
                    TextField("20 g", text: $quantity)
                        .frame(width: 70)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Text("\(ing.name)")
                }
                Button(action:{
                    globalData.recipe.append("\(quantity) \(ing.name)")
                    print(globalData.recipe)
                    
                }){
                    HStack {
                        Image(systemName: "plus")
                        Text("Add to my Bowl")
                    }
                } .buttonStyle(.bordered)
                Image("poke1")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .padding([.bottom], 20)
            } .frame(height: 500)
        }.environmentObject(GlobalData())
    }
}

struct IngredientView: View {
    let image: String
    var body: some View {
        ZStack {
            Circle()
                .foregroundStyle(.white)
            Image("\(image)")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
        }.frame(width: 150, height: 150)
    }
}

