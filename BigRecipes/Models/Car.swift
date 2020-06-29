//
//  Car.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 28-06-20.
//

import Foundation

struct Car: Identifiable, Codable {
    let id: Int
    let year: Int
    let horsepower: Int
    let make: String
    let model: String
    let price: Int
    let img_url: String
}
