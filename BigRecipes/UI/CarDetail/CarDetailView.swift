//
//  CarDetailView.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 29-06-20.
//

import SwiftUI

struct CarDetailView: View {
    
    @State var car: Car
    @StateObject var imageLoader: ImageLoader
    
    var body: some View {
        GeometryReader(content: { geometry in
            VStack {
                Image(uiImage: imageLoader.image ?? UIImage())
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(height: 250)
                    .clipped()
                    .onAppear {
                        self.imageLoader.load()
                    }
                    .onDisappear {
                        self.imageLoader.cancel()
                    }
                CarDetailLabel(text: "Marca:", detail: car.make)
                CarDetailLabel(text: "Modelo:", detail: car.model)
                CarDetailLabel(text: "Prercio:", detail: "$\(car.price)")
                CarDetailLabel(text: "Año:", detail: "\(car.year)")
                CarDetailLabel(text: "Caballos de Fuerza:", detail: "\(car.horsepower)")
                Spacer()
                Button("Cotizar") {
                    
                }
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .frame(minWidth: 0, maxWidth: .infinity)
                .frame(height: 50.0)
                .foregroundColor(.white)
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                .background(Color.blue)
                Spacer()
            }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        })
        
    }
}

struct CarDetailView_Previews: PreviewProvider {
    static let car = Car(id: 1, year: 1990, horsepower: 400, make: "Lamborghini", model: "Veneno", price: 2000, img_url: "")
    static var previews: some View {
        CarDetailView(car: Self.car, imageLoader: ImageLoader(url: URL(string: "https://upload.wikimedia.org/wikipedia/commons/7/78/Lamborghini_Huracan_Evo_Genf_2019_1Y7A5452.jpg")!))
    }
}
