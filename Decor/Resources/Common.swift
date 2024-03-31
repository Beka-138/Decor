//
//  Common.swift
//  Decor
//
//  Created by Beka Akramov on 30.03.2024.
//

import SwiftUI

extension Text {
    func primary() -> some View {
        self
//            .foregroundColor(Color.white)
            .font(.title)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    func secondary() -> some View {
        self
//            .foregroundColor(Color("text_secondary"))
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}


