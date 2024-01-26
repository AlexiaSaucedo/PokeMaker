//
//  BagelMaker_SwiftUIApp.swift
//  BagelMaker-SwiftUI
//
//  Created by Alexia Fernanda Saucedo Romero on 16/01/24.
//

import SwiftUI

@main
struct PokeMaker_SwiftUIApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(ingredient: Ingredient(id: "1", name: "Shrimp", category: "Protein", img: "ing1", quantityEx: "20 g"))
        }
    }
}
