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
            ZStack(alignment: .top) {
                Color.blue.opacity(0.25)
                    .edgesIgnoringSafeArea(.all)
                
                GeometryReader { proxy in
                    
                    if proxy.size.width < proxy.size.height {
                        VStack(alignment: .center){
                            Image("glowne")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .clipShape(Circle())
                                .frame(maxWidth: 400)
                                .padding()
                                .shadow(radius: 10)
                            
                            Text("Michał Kierzkowski")
                                .font(.title)
                                .multilineTextAlignment(.center)
                            
                            NavigationLink(destination: AboutMe()) {
                                Text("O mnie")
                                    .frame(width: 300, height: 50, alignment: .center)
                                    .background(Color.blue.opacity(0.5))
                                    .foregroundColor(Color.white)
                                    .cornerRadius(10)
                                    .padding(.top)
                            }
                            
                            NavigationLink(destination: Photos()) {
                                Text("Fotografia")
                                    .frame(width: 300, height: 50, alignment: .center)
                                    .background(Color.blue.opacity(0.5))
                                    .foregroundColor(Color.white)
                                    .cornerRadius(10)
                                    .padding(.top)
                            }
                            
                            NavigationLink(destination: Painting()) {
                                Text("Malarstwo")
                                    .frame(width: 300, height: 50, alignment: .center)
                                    .background(Color.blue.opacity(0.5))
                                    .foregroundColor(Color.white)
                                    .cornerRadius(10)
                                    .padding(.top)
                            }
                            
                            NavigationLink(destination: Contact()) {
                                Text("Kontakt")
                                    .frame(width: 300, height: 50, alignment: .center)
                                    .background(Color.blue.opacity(0.5))
                                    .foregroundColor(Color.white)
                                    .cornerRadius(10)
                                    .padding()
                            }
                        }.frame(width: proxy.size.width)
                    } else {
                        HStack(alignment: .center){
                       VStack(){
                           Image("glowne")
                               .resizable()
                               .aspectRatio(contentMode: .fit)
                               .clipShape(Circle())
                               .frame(maxWidth: 400)
                               .padding()
                               .shadow(radius: 10)
                           
                        }
                        VStack(){
                            Text("Michał Kierzkowski")
                                .font(.title)
                                .multilineTextAlignment(.center)
                                .padding(.top)
                           
                           NavigationLink(destination: AboutMe()) {
                               Text("O mnie")
                                   .frame(width: 300, height: 50, alignment: .center)
                                   .background(Color.blue.opacity(0.5))
                                   .foregroundColor(Color.white)
                                   .cornerRadius(10)
                                   .padding(.top)
                           }
                           
                           NavigationLink(destination: Photos()) {
                               Text("Fotografia")
                                   .frame(width: 300, height: 50, alignment: .center)
                                   .background(Color.blue.opacity(0.5))
                                   .foregroundColor(Color.white)
                                   .cornerRadius(10)
                                   .padding(.top)
                           }
                           
                           NavigationLink(destination: Painting()) {
                               Text("Malarstwo")
                                   .frame(width: 300, height: 50, alignment: .center)
                                   .background(Color.blue.opacity(0.5))
                                   .foregroundColor(Color.white)
                                   .cornerRadius(10)
                                   .padding(.top)
                           }
                           
                           NavigationLink(destination: Contact()) {
                               Text("Kontakt")
                                   .frame(width: 300, height: 50, alignment: .center)
                                   .background(Color.blue.opacity(0.5))
                                   .foregroundColor(Color.white)
                                   .cornerRadius(10)
                                   .padding()
                           }
                        }
                        }.frame(width: proxy.size.width)
                    }
                }
            } .navigationBarTitle("Portfolio")
        } .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone 7", "iPhone 7 Plus", "iPhone 11", "iPhone 11 Pro Max", "iPad (7th generation)", "iPad Pro (11-inch)"], id: \.self) { deviceName in
            Home()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
