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
                    Text("604 517 114")
                        .padding(.bottom)
                    
                    Text("Email")
                        .fontWeight(.bold)
                    Text("kierzkowski89@gmail.com")
                        .padding(.bottom)

                    
                    Text("Instagram")
                        .fontWeight(.bold)
                    Text("@mihll")
                        .padding(.bottom)

                    
                    Text("Twitter")
                        .fontWeight(.bold)
                    Text("@mihll")
                        .padding(.bottom)
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
