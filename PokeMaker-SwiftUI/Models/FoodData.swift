//
//  FoodData.swift
//  PokeMaker-SwiftUI
//
//  Created by Alexia Fernanda Saucedo Romero on 22/01/24.
//

import Foundation

struct Food : Decodable, Identifiable {
    //let totalNutrients : Nutrients
    var id = UUID()
    let calories : Int
    let healthLabels : [String]
}

//struct Nutrients : Decodable {
//    let ENERC_KCAL: Nutrient
//    let PROCNT : Nutrient
//    let FAT : Nutrient
//}
//
//struct Nutrient : Decodable {
//    let label : String
//    let quantity : Int
//    let unit : String
//}

