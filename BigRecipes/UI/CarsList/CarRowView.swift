//
//  CarRowView.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 28-06-20.
//

import SwiftUI

struct CarRowView: View {
    
    @State var car: Car
    @StateObject var imageLoader: ImageLoader
    
    var body: some View {
        VStack {
            Image(uiImage: imageLoader.image ?? UIImage())
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(height: 170)
                .clipped()
                .onAppear {
                    self.imageLoader.load()
                }
                .onDisappear {
                    self.imageLoader.cancel()
                }
            Spacer()
            Text(car.make)
                .font(.title)
                .fontWeight(.semibold)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
            HStack {
                Text(car.model)
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
                Text("$ \(car.price)")
            }
        }
        .border(Color.gray, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
        .cornerRadius(8.0)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .frame(height: 250)
    }
}

struct CarRowView_Previews: PreviewProvider {
    static let car = Car(id: 1, year: 1990, horsepower: 400, make: "Lamborghini", model: "Veneno", price: 2000, img_url: "")
    static var previews: some View {
        CarRowView(car: Self.car, imageLoader: ImageLoader(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/7/78/Lamborghini_Huracan_Evo_Genf_2019_1Y7A5452.jpg")!))
    }
}
