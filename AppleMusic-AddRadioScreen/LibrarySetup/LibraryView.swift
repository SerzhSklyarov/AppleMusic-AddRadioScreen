//
//  LibraryView.swift
//  AppleMusic-AddRadioScreen
//
//  Created by Wizzard Sklyarov on 2022. 01. 17..
//

import SwiftUI

struct LibraryView: View {
    @State var showScreen = false
    
    var body: some View {
        NavigationView {
            VStack {
                if showScreen {
                    Library()
                } else {
                    LibraryInfo()
                }
            }
            .environment(\.editMode, .constant(showScreen ? EditMode.active : EditMode.inactive))
            .navigationTitle("Медиатека")
            .toolbar(content: {
                Button(action: {
                    showScreen.toggle()
                }, label: {
                    if showScreen {
                        Text("Править")
                            .foregroundColor(.red)
                    } else {
                        Text("Готово")
                            .foregroundColor(.red)
                    }
                })
            })
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct LibraryView_Previews: PreviewProvider {
    static var previews: some View {
        LibraryView()
    }
}

