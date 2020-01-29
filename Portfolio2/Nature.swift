//
//  Nature.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 28/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct Nature: View {
    let pages: [PageViewData] = [
        PageViewData(imageNamed: "bokeh_roslina"),
        PageViewData(imageNamed: "zboze_pole"),
        PageViewData(imageNamed: "las_bambus")
    ]
    @State private var index: Int = 0
    
    var body: some View {
        ZStack(alignment: .bottom) {
            SwiperView(pages: self.pages, index: self.$index)
        }.background(Color.black)
            .navigationBarTitle("Natura",displayMode: .inline)
            .edgesIgnoringSafeArea(.bottom)
    }
}

struct Nature_Preview: PreviewProvider {
    static var previews: some View {
        Nature()
    }
}
