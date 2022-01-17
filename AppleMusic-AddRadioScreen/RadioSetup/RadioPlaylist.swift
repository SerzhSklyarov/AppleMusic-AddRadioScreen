//
//  RadioPlaylist.swift
//  AppleMusic-AddRadioScreen
//
//  Created by Wizzard Sklyarov on 2022. 01. 17..
//

import SwiftUI

struct RadioPlaylist: View {
    
    @State private var radioModels = ModelRadio.data
    
    var rows = [
        GridItem(.fixed(320))
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHGrid(rows: rows) {
                ForEach(radioModels, id: \.id) { modelRadio in
                    VStack(alignment: .leading) {
                        Text(modelRadio.titleRadiostation)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size: 18))
                        Text(modelRadio.title)
                            .foregroundColor(.black)
                            .fontWeight(.regular)
                            .font(.system(size: 23))
                        Text(modelRadio.subtitle)
                            .foregroundColor(.secondary)
                            .fontWeight(.medium)
                            .font(.system(size: 18))
                        Spacer()
                            .frame(height: 15)
                        Image(modelRadio.image)
                            .resizable()
                            .frame(width: 370)
                            .cornerRadius(10)
                    }
                }
            }
        }
    }
}

struct RadioPlaylist_Previews: PreviewProvider {
    static var previews: some View {
        RadioPlaylist()
    }
}
