//
//  Portraits.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 28/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct Portraits: View {
    let pages: [PageViewData] = [
        PageViewData(imageNamed: "portret_2"),
        PageViewData(imageNamed: "portret_3"),
        PageViewData(imageNamed: "portret_4")
    ]
    @State private var index: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            SwiperView(pages: self.pages, index: self.$index)
        }.background(Color.black)
        .navigationBarTitle("Portret",displayMode: .inline)

        .edgesIgnoringSafeArea(.bottom)
    }
}

struct Portraits_Previews: PreviewProvider {
    static var previews: some View {
        Portraits()
    }
}
