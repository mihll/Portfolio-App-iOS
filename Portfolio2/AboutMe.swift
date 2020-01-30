//
//  AboutMe.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 27/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct AboutMe: View {
    var body: some View {
        ZStack() {
            Color.blue.opacity(0.25)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(){
                Image("poprawione")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 400)
                .padding()
                .shadow(radius: 10)
                
                Text("Fotografia")
                    .font(.title)
                    .fontWeight(.bold)
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu imperdiet magna. Quisque posuere ipsum at tellus volutpat, quis suscipit felis hendrerit. Duis tempus non ligula sit amet consequat. Mauris at sem eros. Fusce ut leo lectus. Mauris sit amet elementum justo, eget tristique quam. Nam at dolor at purus congue congue in eu dolor. Maecenas sit amet leo mauris. Nullam id nunc orci. Integer dapibus lorem a libero tempus, a pretium ligula porttitor. Suspendisse tellus tellus, ultricies vitae tempor nec, luctus in mi. Suspendisse suscipit ornare mollis. Pellentesque cursus mattis velit non tincidunt. Aliquam laoreet enim eros, quis sodales diam tempor vitae. Aenean sit amet gravida lectus.")
                    .font(.body)
                    .padding()
                
                Text("Malarstwo")
                    .font(.title)
                    .fontWeight(.bold)
                    
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu imperdiet magna. Quisque posuere ipsum at tellus volutpat, quis suscipit felis hendrerit. Duis tempus non ligula sit amet consequat. Mauris at sem eros. Fusce ut leo lectus. Mauris sit amet elementum justo, eget tristique quam. Nam at dolor at purus congue congue in eu dolor. Maecenas sit amet leo mauris. Nullam id nunc orci. Integer dapibus lorem a libero tempus, a pretium ligula porttitor. Suspendisse tellus tellus, ultricies vitae tempor nec, luctus in mi. Suspendisse suscipit ornare mollis. Pellentesque cursus mattis velit non tincidunt. Aliquam laoreet enim eros, quis sodales diam tempor vitae. Aenean sit amet gravida lectus.")
                    .font(.body)
                    .padding()
                
                Text("Projekty")
                    .font(.title)
                    .fontWeight(.bold)
                    
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin eu imperdiet magna. Quisque posuere ipsum at tellus volutpat, quis suscipit felis hendrerit. Duis tempus non ligula sit amet consequat. Mauris at sem eros. Fusce ut leo lectus. Mauris sit amet elementum justo, eget tristique quam. Nam at dolor at purus congue congue in eu dolor. Maecenas sit amet leo mauris. Nullam id nunc orci. Integer dapibus lorem a libero tempus, a pretium ligula porttitor. Suspendisse tellus tellus, ultricies vitae tempor nec, luctus in mi. Suspendisse suscipit ornare mollis. Pellentesque cursus mattis velit non tincidunt. Aliquam laoreet enim eros, quis sodales diam tempor vitae. Aenean sit amet gravida lectus.")
                    .font(.body)
                    .padding()
            }
        } .navigationBarTitle("O mnie", displayMode: .inline)
    }
}

struct AboutMe_Previews: PreviewProvider {
    static var previews: some View {
       ForEach(["iPhone 7", "iPhone 11", "iPad (7th generation)"], id: \.self) { deviceName in
            AboutMe()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
