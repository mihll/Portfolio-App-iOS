//
//  PhotographyListElement.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 30/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct PhotographyListElement: View {
    let coverPhoto: String
    let category: LocalizedStringKey
    let photoPages: [PageViewData]

    
    var body: some View {
        NavigationLink(destination: Gallery(galleryName: category, photoPages: photoPages)){
            ZStack(alignment: .bottomLeading){
                Image(coverPhoto)
                    .resizable()
                    .scaledToFill()
                    .frame(maxHeight: 250)
                    .clipped()
                    .overlay(Rectangle()
                    .fill(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .center, endPoint: .bottom))
                    .clipped())
                           
                Text(category)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
            }
        }.listRowInsets(EdgeInsets())
    }
}

struct PhotographyListElement_Previews: PreviewProvider {
    static var previews: some View {
        PhotographyListElement(coverPhoto: "portret_1", category: "Portret", photoPages: [PageViewData(imageNamed: "portret_1"),PageViewData(imageNamed: "portret_2")])
    }
}
