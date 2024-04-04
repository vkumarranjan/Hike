//
//  CardView.swift
//  Hike
//
//  Created by vinay Kumar ranjan on 04/04/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            CustomBackgroundView()
          
            VStack  {
                // MARK: - Header
                VStack (alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(colors: [.customGrayLight,
                                                        .customGrayMedium],
                                               startPoint: .top, endPoint: .bottom)
                        )
                        Button {
                            
                        } label: {
                            Text("Button")
                        }
                    }
                    
                    Text("Fun and enjoyble outdoor activity for friends and families")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                } // : Header
                .padding(.horizontal, 30)
                // MARK: - MAIN CONTENT
                
                ZStack {
                    Circle()
                        .fill(LinearGradient(colors:
                                                [.blue, .red],
                                             startPoint: .topLeading,
                                             endPoint: .bottomTrailing))
                        .frame(width: 256, height: 256)
                    
                    Image("image-1")
                        .resizable()
                        .scaledToFit()
                }
                // MARK: - FOOTER
            }
        } //: CARD
        .frame(width: 320, height: 570)
    }
}


#Preview {
    CardView()
}
