//
//  Gallery.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 30/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct Gallery: View {
    let galleryName: LocalizedStringKey
    let photoPages: [PageViewData]
    @State private var index: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            SwiperView(pages: self.photoPages, index: self.$index)
        }.background(Color.black)
        .navigationBarTitle(galleryName, displayMode: .inline)

        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Gallery_Previews: PreviewProvider {
    static var previews: some View {
        Gallery(galleryName: "Portert", photoPages: [
               PageViewData(imageNamed: "portret_2"),
               PageViewData(imageNamed: "portret_3"),
               PageViewData(imageNamed: "portret_4")])
    }
}
