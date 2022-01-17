//
//  ModelRadio.swift
//  AppleMusic-AddRadioScreen
//
//  Created by Wizzard Sklyarov on 2022. 01. 17..
//

import SwiftUI

struct ModelRadio:
    Identifiable, Hashable {
    let id = UUID()
    var image: String
    var title: String
    var subtitle: String
    var titleRadiostation: String
    
}

extension ModelRadio {
    
    static let data = [
        
        ModelRadio(image: "2Pac",
                   title: "The best rap collection",
                   subtitle: "What's new",
                   titleRadiostation: "New album"),
        ModelRadio(image: "snoothjazz",
                   title: "Smooth Jazz",
                   subtitle: "Listening right now",
                   titleRadiostation: "Your private selection"),
        ModelRadio(image: "classic-fm-logo-large-square-1520936467-list-handheld-0",
                   title: "Classical music",
                   subtitle: "The best Modern Classics",
                   titleRadiostation: "Your private selection"),
        ModelRadio(image: "Picture5",
                   title: "Rock classics",
                   subtitle: "Listen to the best rock hits",
                   titleRadiostation: "Your private selection"),
        ModelRadio(image: "Picture10",
                   title: "Pop",
                   subtitle: "Pop classics",
                   titleRadiostation: "Your private selection"),
        ModelRadio(image: "nmdradio",
                   title: "NMD radio",
                   subtitle: "Your radiostation",
                   titleRadiostation: "Your private selection"),
        ModelRadio(image: "Electronic",
                   title: "Electronic music",
                   subtitle: "Deep dive into electronic music",
                   titleRadiostation: "Your private selection")
    ]
}

