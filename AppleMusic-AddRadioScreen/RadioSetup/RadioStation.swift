//
//  RadioStation.swift
//  AppleMusic-AddRadioScreen
//
//  Created by Wizzard Sklyarov on 2022. 01. 17..
//

import SwiftUI

struct RadioStation: View {
    
    @State private var modelsRadioStation = ModelRadioStation.data
    
    var columns = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: columns, alignment: .leading) {
            Section(header: Text("RadioStations")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .padding(.horizontal, 10))
            {
                ForEach(modelsRadioStation, id: \.id) { modelRadio in
                    HStack(spacing: 10) {
                        Image(modelRadio.image)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100)
                            .cornerRadius(10)
                        VStack(alignment: .leading) {
                            Text(modelRadio.title)
                                .foregroundColor(.black)
                                .fontWeight(.regular)
                                .font(.system(size: 18))
                            Text(modelRadio.subtitle)
                                .foregroundColor(.secondary)
                                .fontWeight(.regular)
                                .font(.system(size: 14))
                        }
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 10)
                    Divider()
                }
            }
        }
    }
}

struct RadioStation_Previews: PreviewProvider {
    static var previews: some View {
        RadioStation()
    }
}
