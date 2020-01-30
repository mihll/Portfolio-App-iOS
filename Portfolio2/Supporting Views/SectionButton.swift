//
//  SectionButton.swift
//  Portfolio2
//
//  Created by Michał Kierzkowski on 30/01/2020.
//  Copyright © 2020 Michał Kierzkowski. All rights reserved.
//

import SwiftUI

struct SectionButton: View {
    var name: String
    
    var body: some View {
            Text(name)
                .frame(width: 300, height: 50, alignment: .center)
                .background(Color.blue.opacity(0.5))
                .foregroundColor(Color.white)
                .cornerRadius(10)
                .padding(.bottom)
    }
}

struct SectionButton_Previews: PreviewProvider {
    static var previews: some View {
        SectionButton(name: "Button")
    }
}
