//
//  Nature.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 28/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct Painting: View {
    let pages: [PageViewData] = [
        PageViewData(imageNamed: "swieca"),
        PageViewData(imageNamed: "lotos"),
        PageViewData(imageNamed: "serce")
    ]
    @State private var index: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            SwiperView(pages: self.pages, index: self.$index)
        }.background(Color.black)
            .navigationBarTitle("Malarstwo",displayMode: .inline)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct Painting_Preview: PreviewProvider {
    static var previews: some View {
        Painting()
    }
}
