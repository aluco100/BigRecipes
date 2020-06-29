//
//  CarDetailLabel.swift
//  BigRecipes
//
//  Created by Alfredo Luco on 29-06-20.
//

import SwiftUI

struct CarDetailLabel: View {
    
    @State var text: String
    @State var detail: String
    
    var body: some View {
        HStack {
            Text(text + " ")
                .font(.title)
                .fontWeight(.thin)
                .foregroundColor(Color.gray)
            Text(detail)
                .font(.title)
                .fontWeight(.bold)
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        }
    }
}

struct CarDetailLabel_Previews: PreviewProvider {
    static var previews: some View {
        CarDetailLabel(text: "Marca: ", detail: "Ferrari")
    }
}
