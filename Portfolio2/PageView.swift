//
//  PageView.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 28/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct PageViewData: Identifiable {
    let id: String = UUID().uuidString
    let imageNamed: String
}

struct PageView: View {
    let viewData: PageViewData
    var body: some View {
        Image(viewData.imageNamed)
            .resizable()
            .clipped()
            .scaledToFit()
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(viewData: PageViewData(imageNamed: "portret_1"))
    }
}
