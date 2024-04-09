//
//  CardView.swift
//  Hike
//
//  Created by vinay Kumar ranjan on 04/04/24.
//

import SwiftUI

struct CardView: View {
    
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    @State private var isShowingSHeet: Bool = false
    
    // MARK: Functions
    func randomInage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        imageNumber = randomNumber
    }
    
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
                        Spacer()
                        Button {
                            isShowingSHeet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSHeet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
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
                  CustomCircelView()
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.easeOut(duration:1), value: imageNumber)
                }
                // MARK: - FOOTER
                
                Button {
                   randomInage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom))
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y:2)
                }
                .buttonStyle(GradientButton())
            } //: ZSTACK
        } //: CARD
        .frame(width: 320, height: 570)
    }
}


#Preview {
    CardView()
}
