//
//  ModelRadioStation.swift
//  AppleMusic-AddRadioScreen
//
//  Created by Wizzard Sklyarov on 2022. 01. 17..
//

import SwiftUI

struct ModelRadioStation: Identifiable, Hashable {
    let id = UUID()
    var image: String
    var title: String
    var subtitle: String
}

extension ModelRadioStation {
    
    static let data = [
        ModelRadioStation(image: "Picture9", title: "Pop", subtitle: "The best hits ever."),
        ModelRadioStation(image: "classic-fm-logo-large-square-1520936467-list-handheld-0", title: "Classical music", subtitle: "The best Modern Classics."),
        ModelRadioStation(image: "snoothjazz", title: "Smooth Jazz", subtitle: "Listening now."),
        ModelRadioStation(image: "Picture5", title: "Rock classics", subtitle: "Listen to the best rock hits."),
        ModelRadioStation(image: "2Pac", title: "The best rap collection", subtitle: "What's new."),
        ModelRadioStation(image: "nmdradio", title: "NMD radio", subtitle: "Your radiostation."),
        ModelRadioStation(image: "Electronic", title: "Electronic music", subtitle: "Deep dive into electronic music.")
    ]
}
