//
//  MotionAnimationView.swift
//  Hike
//
//  Created by vinay Kumar ranjan on 05/04/24.
//

import SwiftUI

struct MotionAnimationView: View {
    
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    // 1. MRAK: - FUNCTION
    func randumCoordinate() -> CGFloat {
        CGFloat.random(in: 0...256)
    }
    // 2. MRAK: - SIZE
    func randomSize() -> CGFloat {
        CGFloat(Int.random(in: 4...80))
    }
    // 3. MRAK: - SCALE
    func randomScale() -> CGFloat {
        CGFloat(Double.random(in: 0.1...2.0))
    }
    // 4. MRAK: - SPEED
    func randomSpeed() -> Double {
        Double.random(in: 0.05...1.0)
    }
    // 5. MRAK: - DELAY
    func randomDelay() -> Double {
        Double.random(in: 0...2)
    }
    
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randumCoordinate(), y: randumCoordinate())
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                         withAnimation (
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                         ) {
                             isAnimating = true
                         }
                    })
            }
        } // : ZSTACK
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }
}

#Preview {
    MotionAnimationView()
        .background(
          Circle()
            .fill(.teal)
        )
}
