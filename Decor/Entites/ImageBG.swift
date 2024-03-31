//
//  ImageBG.swift
//  Decor
//
//  Created by Archibbald on 31.03.2024.
//

import Foundation

struct ImageBG: Identifiable {
    var id = UUID()
    var name: String
}

extension [ImageBG] {
    static let preview: [ImageBG] = [
        ImageBG(name: "greeting1"),
        ImageBG(name: "greeting5"),
        ImageBG(name: "greeting3"),
        ImageBG(name: "greeting4"),
        ImageBG(name: "greeting6"),
        ImageBG(name: "greeting7"),
        ImageBG(name: "greeting4"),
        ImageBG(name: "greeting5"),
        ImageBG(name: "greeting6"),
        ImageBG(name: "greeting7"),
        ImageBG(name: "greeting2")
    ]
}
