//
//  CarsValidateImageReducer.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 28-06-20.
//

import Foundation

class CarsValidateImageReducer {
    
    //MARK: - Singleton
    
    static let shared: CarsValidateImageReducer = CarsValidateImageReducer()
    private init () {}
    
    //MARK: - Filtered By Empty Image
    
    public func filteredByEmptyImage(_ cars: [Car]) -> [Car] {
        return cars.filter({ $0.img_url != "" })
    }
    
}
