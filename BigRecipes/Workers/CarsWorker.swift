//
//  CarsWorker.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 28-06-20.
//

import Foundation

class CarsWorker {
    
    //MARK: - Properties
    
    private var repository: CarStoreProtocol
    
    //MARK: - Dependecy Injection
    
    init(_ repo: CarStoreProtocol) {
        self.repository = repo
    }
    
    //MARK: - Fetch Cars
    
    public func fetchCars(_ completion: @escaping CarResultCompletionHandler) {
        self.repository.fetchCars(completion: completion)
    }
    
}
