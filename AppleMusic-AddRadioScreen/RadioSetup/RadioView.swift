//
//  RadioView.swift
//  AppleMusic-AddRadioScreen
//
//  Created by Wizzard Sklyarov on 2022. 01. 17..
//

import SwiftUI

struct RadioView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                Divider()
                VStack {
                    RadioPlaylist()
                        .padding(10)
                    Divider()
                    Spacer()
                        .frame(height: 20)
                    RadioStation()
                }
            }
            .navigationTitle("Radio")
            .navigationBarHidden(false)
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        RadioView()
    }
}
