//
//  ContentView.swift
//  PokeMaker-SwiftUI
//
//  Created by Alexia Fernanda Saucedo Romero on 16/01/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            PokeCard()
            Text("Poke Bowls")
                .font(.largeTitle)
                .bold()
            Text("Not sure which one?")
            Button("Give me some ingredients"){
                
            } .buttonStyle(.borderedProminent)

        }
      
    }
}

#Preview {
    ContentView()
}

struct PokeCard: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .foregroundStyle(Color(uiColor: UIColor(red: 0.97, green: 0.88, blue: 0.85, alpha: 1.00)))
                .frame(height: 500)
                .padding()
            VStack {
                Text("PROTEIN: Shrimp")
                    .bold()
                    .padding()
                ZStack {
                    Circle()
                        .foregroundStyle(.white)
                    Image("ing1")
                        .resizable()
                    .aspectRatio(1, contentMode: .fit)
                }.frame(width: 150, height: 150)
                Image("poke1")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                .padding()
            } .frame(height: 500)
        }
    }
}
