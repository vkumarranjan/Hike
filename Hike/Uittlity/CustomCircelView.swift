//
//  CustomCircelView.swift
//  Hike
//
//  Created by vinay Kumar ranjan on 05/04/24.
//

import SwiftUI

struct CustomCircelView: View {
    
    @State var isAnimatedGradient: Bool = false
    
    
    var body: some View {
        ZStack {
            Circle()
                .fill(LinearGradient(colors:
                                        [.customIndigoMedium, .cutomSalmonLight],
                                     startPoint: isAnimatedGradient ? .topLeading: .bottomLeading,
                                     endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing))
            
                .onAppear{
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimatedGradient.toggle()
                    }
                }
           MotionAnimationView()
        } // : ZStack
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircelView()
}
