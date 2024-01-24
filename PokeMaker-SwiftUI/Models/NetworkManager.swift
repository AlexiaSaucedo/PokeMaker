//
//  NetworkManager.swift
//  PokeMaker-SwiftUI
//
//  Created by Alexia Fernanda Saucedo Romero on 22/01/24.
//

import Foundation

class NetworkManager : ObservableObject {
    
    @Published var nutritionInfo = Int()
    @Published var labels = [String]()
    
    // ingredient = 10 "oz" "chicken" &ingr=10%20oz%20chicken
    let nutritionURL = "https://api.edamam.com/api/nutrition-data?app_id=0218f081&app_key=d408cba3371422285029245272bfeb99&nutrition-type=cooking"
    
    func fetchData(quantity: Int, measurement: String ,ingredient: String) {
        
        let urlString = "\(nutritionURL)&ingr=\(quantity)%20\(measurement)%20\(ingredient)"
        
        if let url = URL(string: urlString){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) {(data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data  {
                        do {
                            let information = try decoder.decode(Food.self, from: safeData)
                            //self.nutritionInfo = information.calories
                            print(information.calories)
                            //self.labels = information.healthLabels
                            print(information.healthLabels)
                        } catch {
                            print(error)
                        }
                    }
                }
            }
            task.resume()
        }
            
    }
    
}
