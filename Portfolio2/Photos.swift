//
//  Photos.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 26/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct Photos: View {
    var body: some View {
        List {
            NavigationLink(destination: Portraits()){
                ZStack(alignment: .bottomLeading){
                    Image("portret_2")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .clipped()
                        .overlay(Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .center, endPoint: .bottom))
                            .clipped())
                    
                    Text("Portret")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                }
            }.listRowInsets(EdgeInsets())
            
            NavigationLink(destination: Architecture()){
                ZStack(alignment: .bottomLeading){
                    Image("london_eye")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .clipped()
                        .overlay(Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .center, endPoint: .bottom))
                            .clipped())
                    
                    Text("Architektura")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                }
                
            }.listRowInsets(EdgeInsets())
            
            NavigationLink(destination: Nature()){
                ZStack(alignment: .bottomLeading){
                    Image("bokeh_roslina")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .clipped()
                        .overlay(Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .center, endPoint: .bottom))
                            .clipped())
                    
                    Text("Natura")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                }
                
            }.listRowInsets(EdgeInsets())
            
            NavigationLink(destination: Astrophotography()){
                ZStack(alignment: .bottomLeading){
                    Image("astro1")
                        .resizable()
                        .scaledToFill()
                        .frame(height: 200)
                        .clipped()
                        .overlay(Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .center, endPoint: .bottom))
                            .clipped())
                    
                    Text("Astrofotografia")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .padding()
                }
                
            }.listRowInsets(EdgeInsets())
        }
        .navigationBarTitle("Fotografia",displayMode: .inline)
        .padding(.trailing, -32.0)
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
