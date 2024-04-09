//
//  SettingsView.swift
//  Hike
//
//  Created by vinay Kumar ranjan on 05/04/24.
//

import SwiftUI

struct SettingsView: View {
    private let alternateAppIcons: [String] = ["AppIcon-Backpack", "AppIcon-Camera","AppIcon-Campfire","AppIcon-MagnifyingGlass","AppIcon-Map","AppIcon-Mushroom"]
    
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
            Section(header: Text("Alternate ICONS")) {
                ScrollView(.horizontal, showsIndicators: false){
                    HStack (spacing: 12){
                        ForEach(alternateAppIcons.indices, id: \.self) { item in
                            Button {
                                print("Pressed ")
                            } label: {
                                Image("\(alternateAppIcons[item])-Preview")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 80, height: 80)
                                    .cornerRadius(16)
                            }
                        .buttonStyle(.borderless)
                        }
                    }
                } //: Scroll VIEW
                .padding(.top, 12)
                
                Text("Choose your fevraout icon from the collection above.")
                    .frame(minWidth: 0 , maxWidth: .infinity)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
                    .font(.footnote)
            }
            .listRowSeparator(.hidden)
            
            Section(header: Text("About THE APP"),
                    footer: HStack {
                Spacer()
                     Text("Coptyright ©️All the reserved.")
                Spacer()
            }
                .padding(.vertical, 8)
                    
            ) {
                // 1. Basic Labled Content
              //  LabeledContent("Application", value: "Hike")
              // 2. Advanced Labled Content
                CustomListRowView(rowLabel: "Application", rowIcon: "apps.iphone", rowContent: "HIKE", rowTintColor: .blue)
                
                CustomListRowView(rowLabel: "Compatiblity", rowIcon: "info.circle", rowContent: "iOS, iPadOS", rowTintColor: .red)
                
                CustomListRowView(rowLabel: "Tech", rowIcon: "swift", rowContent: "1.0", rowTintColor: .orange)
                
                CustomListRowView(rowLabel: "Version", rowIcon: "gear", rowContent: "1.0", rowTintColor: .purple)
                
                CustomListRowView(rowLabel: "Developer", rowIcon: "ellipsis.curlybraces", rowContent: "Vinay Ranjan", rowTintColor: .mint)
            }
            
            // MARK: SECTION Acount
        } //: LIST
       
    }
}

#Preview {
    SettingsView()
}
