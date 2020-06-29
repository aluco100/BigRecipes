//
//  AppState.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 28-06-20.
//

import Foundation
import SwiftUI

class AppState: ObservableObject {
    @Published var cars: [Car] = []
}
