//
//  CarsInteractor.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 28-06-20.
//

import Foundation

//MARK: - <Interactor Definition>

protocol CarsInteractorProtocol {
    var appState: AppState {get set}
    var worker: CarsWorker {get set}
    func loadCars()
}

struct CarsInteractor: CarsInteractorProtocol {

    //MARK: - Variables
    var appState: AppState
    var worker: CarsWorker = CarsWorker(CarsAPIRepository())
    
    //MARK: - Load Cars
    
    func loadCars() {
        worker.fetchCars { (result) in
            switch result {
            case .success(let result):
                self.appState.cars = result
                break
            case .failure(let error):
                print(error) //TODO: Make something here
                break
            }
        }
    }
    
}
