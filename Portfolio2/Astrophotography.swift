//
//  Nature.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 28/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct Astrophotography: View {
    let pages: [PageViewData] = [
        PageViewData(imageNamed: "astro1"),
        PageViewData(imageNamed: "astro2"),
        PageViewData(imageNamed: "astro3")
    ]
    @State private var index: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            SwiperView(pages: self.pages, index: self.$index)
        }.background(Color.black)
            .navigationBarTitle("Astrofotografia",displayMode: .inline)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct Astrophotography_Preview: PreviewProvider {
    static var previews: some View {
        Astrophotography()
    }
}
