//
//  SettingsView.swift
//  Hike
//
//  Created by vinay Kumar ranjan on 05/04/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            Section {
                // MARK: SECTION Header
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack (spacing: -10){
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors'choice")
                            .fontWeight(.medium)
                        
                        
                    }
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
                )
                .padding(.top, 8)
                VStack (spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photo but us even better once you are actully there. The hike that you hope to do again some day. \nfind the bezt day hikes")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! its time for a walk")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            }
            .listRowSeparator(.hidden)
            // MARK: SECTION Icons
            
            // MARK: SECTION Acount
        } //: LIST
       
    }
}

#Preview {
    SettingsView()
}
