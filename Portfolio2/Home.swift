//
//  ContentView.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 25/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            ZStack() {
                Color.blue.opacity(0.25)
                    .edgesIgnoringSafeArea(.all)
                
                GeometryReader { proxy in
                    if proxy.size.width < proxy.size.height {
                        VStack(){
                            Image("glowne")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(maxWidth: 500)
                                .padding()
                                .shadow(radius: 10)
                            
                            Text("Michał Kierzkowski")
                                .font(.title)
                                .padding(.bottom)
                            
                            NavigationLink(destination: AboutMe()) {
                                SectionButton(name: "O mnie")
                            }
                            
                            NavigationLink(destination: Photography()) {
                                SectionButton(name: "Fotografia")
                            }
                            
                            NavigationLink(destination: Gallery(galleryName: "Malarstwo", photoPages: [
                                PageViewData(imageNamed: "swieca"),
                                PageViewData(imageNamed: "lotos"),
                                PageViewData(imageNamed: "serce")
                            ])) {
                                SectionButton(name: "Malarstwo")
                            }
                            
                            NavigationLink(destination: Contact()) {
                                SectionButton(name: "Kontakt")
                            }
                        }.frame(width: proxy.size.width)
                        
                    } else {
                        HStack(){
                            VStack(){
                                Image("glowne")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .clipShape(Circle())
                                    .frame(maxWidth: 500)
                                    .padding()
                                    .shadow(radius: 10)
                           
                            }
                            VStack(){
                                Text("Michał Kierzkowski")
                                    .font(.title)
                                    .padding(.vertical)
                           
                                NavigationLink(destination: AboutMe()) {
                                    SectionButton(name: "O mnie")
                                }
                           
                                NavigationLink(destination: Photography()) {
                                    SectionButton(name: "Fotografia")
                                }
                           
                                NavigationLink(destination: Gallery(galleryName: "Malarstwo", photoPages: [
                                    PageViewData(imageNamed: "swieca"),
                                    PageViewData(imageNamed: "lotos"),
                                    PageViewData(imageNamed: "serce")
                                ])) {
                                    SectionButton(name: "Malarstwo")
                                }
                           
                                NavigationLink(destination: Contact()) {
                                    SectionButton(name: "Kontakt")
                                }
                            }.padding()
                        }.frame(width: proxy.size.width)
                    }
                }
            } .navigationBarTitle("Portfolio")
        } .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 7", "iPhone 11", "iPad Pro (11-inch)"], id: \.self) { deviceName in
            Home()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
