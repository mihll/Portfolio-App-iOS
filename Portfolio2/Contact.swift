//
//  Contact.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 28/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct Contact: View {
    var body: some View {
        ZStack(alignment: .center) {
            Color.blue.opacity(0.25)
                .edgesIgnoringSafeArea(.all)
            
            VStack(){
                Image("contact")
                .resizable()
                .scaledToFit()
                    .frame(maxHeight: 300)
                    .padding()
                
                VStack(){
                    Text("Telefon")
                        .font(.body)
                        .fontWeight(.bold)
                    Button(action: {
                        let strNumber = "604517114"
                        let tel = "tel://"
                        let formattedString = tel + strNumber
                        let url = URL(string: formattedString)!
                        UIApplication.shared.open(url)
                    }) {
                        Text("604 517 114")
                            .padding(.bottom)
                    }
                    
                    Text("Email")
                        .fontWeight(.bold)
                    Button(action: {
                        let strNumber = "kierzkowski89@gmail.com"
                        let tel = "mailto:"
                        let formattedString = tel + strNumber
                        let url = URL(string: formattedString)!
                        UIApplication.shared.open(url)
                    }) {
                    Text("kierzkowski89@gmail.com")
                        .padding(.bottom)
                    }

                    
                    Text("Instagram")
                        .fontWeight(.bold)
                    Button(action: {
                        let formattedString = "instagram://user?username=mihll"
                        let url = URL(string: formattedString)!
                        UIApplication.shared.open(url)
                    }){
                    Text("@mihll")
                        .padding(.bottom)
                    }

                    
                    Text("Twitter")
                        .fontWeight(.bold)
                    Button(action: {
                        let formattedString = "https://twitter.com/mihll98"
                        let url = URL(string: formattedString)!
                        UIApplication.shared.open(url)
                    }){
                    Text("@mihll98")
                        .padding(.bottom)
                    }
                }
            }
            
        }.navigationBarTitle("Kontakt", displayMode: .inline)
    }
}

struct Contact_Previews: PreviewProvider {
    static var previews: some View {
        Contact()
    }
}
