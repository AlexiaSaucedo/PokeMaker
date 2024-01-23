//
//  NetworkManager.swift
//  PokeMaker-SwiftUI
//
//  Created by Alexia Fernanda Saucedo Romero on 22/01/24.
//

import Foundation

class NetworkManager {
    
    func fetchData() {
        if let url = URL(string: "https://api.edamam.com/api/nutrition-data"){
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) {(data, response, error) in
                if error == nil {
                    let decoder = JSONDecoder()
                }
            }
        }
            
    }
    
}
