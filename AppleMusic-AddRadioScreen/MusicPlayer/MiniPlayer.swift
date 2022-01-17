//
//  MiniPlayer.swift
//  AppleMusic-AddRadioScreen
//
//  Created by Wizzard Sklyarov on 2022. 01. 17..
//

import SwiftUI

struct MiniPlayer: View {
    @State var showDetails = false
    
    var body: some View {
        HStack {
            Image("Picture0")
                .resizable()
                .frame(width: 50, height: 50)
                .scaledToFit()
            Text("Lady Gaga - Joanne")
            Spacer()
            
            Button(action: {
                self.showDetails.toggle()
            }, label: {
                Image(systemName: "play.fill")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 18, height: 18)
                    .scaledToFit()
            })
            
            Spacer()
                .frame(width: 13)
            
            Button(action: {
                self.showDetails.toggle()
            }, label: {
                Image(systemName: "forward.fill")
                    .resizable()
                    .foregroundColor(.black)
                    .frame(width: 25, height: 20)
                    .scaledToFit()
            })
                .padding(5)
        }
        .padding()
        .frame(height: 70)
        .background(
            VStack(spacing: 0) {
                BlurView()
                Divider()
            })
        .offset(y: -48)
    }
}

struct MiniPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MiniPlayer()
    }
}
