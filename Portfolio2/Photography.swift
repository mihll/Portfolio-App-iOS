//
//  Photos.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 26/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct Photography: View {
    var body: some View {
        List {
            PhotographyListElement(coverPhoto: "portret_1", category:"Portret", photoPages: [
                PageViewData(imageNamed: "portret_1"),
                PageViewData(imageNamed: "portret_2"),
                PageViewData(imageNamed: "portret_3"),
                PageViewData(imageNamed: "portret_4"),
            ])
            
            PhotographyListElement(coverPhoto: "london_eye", category:"Architektura", photoPages: [
                PageViewData(imageNamed: "london_eye"),
                PageViewData(imageNamed: "abstrakcja"),
                PageViewData(imageNamed: "tower_bridge")
            ])
            
            PhotographyListElement(coverPhoto: "bokeh_roslina", category:"Natura", photoPages: [
                PageViewData(imageNamed: "bokeh_roslina"),
                PageViewData(imageNamed: "zboze_pole"),
                PageViewData(imageNamed: "las_bambus")
            ])
            
            PhotographyListElement(coverPhoto: "astro1", category:"Astrofotografia", photoPages: [
                PageViewData(imageNamed: "astro1"),
                PageViewData(imageNamed: "astro2"),
                PageViewData(imageNamed: "astro3")
            ])
        }
        .navigationBarTitle("Fotografia",displayMode: .inline)
        .padding(.trailing, -32.0)
    }
}

struct Photography_Previews: PreviewProvider {
    static var previews: some View {
        Photography()
    }
}
