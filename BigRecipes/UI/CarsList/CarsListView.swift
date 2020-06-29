//
//  CarsListView.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 28-06-20.
//

import SwiftUI

struct CarsListView: View {
    
    @EnvironmentObject var appState: AppState
    var interactor: CarsInteractor
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(appState.cars) { car in
                    CarRowView(car: car, imageLoader: ImageLoader(url: URL(string: car.img_url)!))
                }
            }
        }.onAppear {
            interactor.loadCars()
        }
    }
}

struct CarsListView_Previews: PreviewProvider {
    static let appState: AppState = AppState()
    static var previews: some View {
        Group {
            CarsListView( interactor: CarsInteractor(appState: Self.appState))
            CarsListView( interactor: CarsInteractor(appState: Self.appState))
                .preferredColorScheme(.dark)
        }
    }
}
