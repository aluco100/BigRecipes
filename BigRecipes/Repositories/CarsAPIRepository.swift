//
//  CarsAPIRepository.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 28-06-20.
//

import Foundation
import Alamofire

class CarsAPIRepository: CarStoreProtocol {

    //MARK: - Fetch Cars
    
    func fetchCars(completion: @escaping CarResultCompletionHandler) {
        AF.request("https://private-anon-fd95d2027c-carsapi1.apiary-mock.com/cars", method: .get, parameters: nil).responseJSON { (response) in
            guard response.error == nil else {
                completion(CarStoreResult.failure(error: response.error!))
                return
            }
            let reducer = CarMapperReducer.shared
            let fileteredReducer = CarsValidateImageReducer.shared
            let cars = fileteredReducer.filteredByEmptyImage(reducer.mapAnyToCars(response.value))
            completion(CarStoreResult.success(result: cars))
        }
    }
    
}
