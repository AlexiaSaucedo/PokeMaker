//
//  FoodData.swift
//  PokeMaker-SwiftUI
//
//  Created by Alexia Fernanda Saucedo Romero on 22/01/24.
//

import Foundation

struct Food : Decodable {
    let totalNutrients : TotalNutrients
}

struct TotalNutrients : Decodable {
    let ENERC_KCAL: Nutrient
    let PROCNT : Nutrient
    let FAT : Nutrient
}

struct Nutrient : Codable {
    let label : String
    let quantity : Int
    let unit : String
}

