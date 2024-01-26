//
//  IngredientData.swift
//  PokeMaker-SwiftUI
//
//  Created by Alexia Fernanda Saucedo Romero on 26/01/24.
//

import Foundation

struct Ingredient: Identifiable {
    let id: String
    let name: String
    let category: String
    let img: String
    let quantityEx: String
}

let ingredients = [
    Ingredient(id: "1", name: "Shrimp", category: "Protein", img: "ing1", quantityEx: "20 g"),
    Ingredient(id: "2", name: "Salmon", category: "Protein", img: "ing2", quantityEx: "20 g"),
    Ingredient(id: "3", name: "Chicken", category: "Protein", img: "ing3", quantityEx: "20 g"),
    Ingredient(id: "4", name: "Avocado", category: "Topping", img: "ing1", quantityEx: "20 g"),
    Ingredient(id: "5", name: "Cream Cheese", category: "Topping", img: "ing1", quantityEx: "20 g"),
    Ingredient(id: "6", name: "Cucumber", category: "Topping", img: "ing1", quantityEx: "20 g"),
    Ingredient(id: "7", name: "Carrot", category: "Topping", img: "ing1", quantityEx: "20 g"),
    Ingredient(id: "8", name: "Mango", category: "Topping", img: "ing1", quantityEx: "20 g"),
]
