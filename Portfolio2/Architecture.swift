//
//  Nature.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 28/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct Architecture: View {
    let pages: [PageViewData] = [
        PageViewData(imageNamed: "london_eye"),
        PageViewData(imageNamed: "abstrakcja"),
        PageViewData(imageNamed: "tower_bridge")
    ]
    @State private var index: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            SwiperView(pages: self.pages, index: self.$index)
        }.background(Color.black)
            .navigationBarTitle("Architektura",displayMode: .inline)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct Architecture_Preview: PreviewProvider {
    static var previews: some View {
        Architecture()
    }
}
