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
    }
}


#Preview {
    CardView()
}
