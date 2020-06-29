//
//  CarMapperReducer.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 28-06-20.
//

import Foundation

class CarMapperReducer {
    
    //MARK: - Singleton
    
    static let shared: CarMapperReducer = CarMapperReducer()
    private init () {}
    
    //MARK: - Map json to objects
    
    public func mapAnyToCars(_ response: Any?) -> [Car] {
        guard let result = response as? [[String : Any]] else {
            return []
        }
        do {
            let jsonData = try JSONSerialization.data(withJSONObject: result, options: .prettyPrinted)
            let decoder = JSONDecoder()
            let cars = try decoder.decode([Car].self, from: jsonData)
            return cars
        } catch let error {
            print(error)
            return []
        }
    }
    
}
