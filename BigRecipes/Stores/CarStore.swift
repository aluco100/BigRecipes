//
//  CarStore.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 28-06-20.
//

import Foundation

//MARK: - Store Definition

protocol CarStoreProtocol {
    func fetchCars(completion: @escaping CarResultCompletionHandler)
}

//MARK: - Completion Definition

typealias CarResultCompletionHandler = (CarStoreResult<[Car]>) -> Void

//MARK: - Response Result

enum CarStoreResult<T> {
    case success(result: T)
    case failure(error: Error)
}
