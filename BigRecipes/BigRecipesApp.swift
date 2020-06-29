//
//  BigRecipesApp.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 27-06-20.
//

import SwiftUI

@main
struct BigRecipesApp: App {
    
    var appState: AppState = AppState()
    
    var body: some Scene {
        WindowGroup {
            CarsListView(interactor: CarsInteractor(appState: appState)).environmentObject(appState)
        }
    }
}
