//
//  SettingsView.swift
//  Fructus
//
//  Created by Pratiksha on 01/11/23.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLebelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .clipShape(.buttonBorder)
                            
                            Spacer()
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                        
                    }
                    
                    //MARK: - Section 2

                    //MARK: - Section 3
                    GroupBox(
                        label: (SettingsLebelView(labelText: "Application", labelImage: "apps.iphone"))
                    ) {
                        
                        SettingsRowView(name: "Developer", content: "Pratiksha")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI MasterClass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@robertpetras", linkDestination: "twitter.com/robertpetras")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    

                } //: VStack
                .navigationTitle(Text("Settings"))
                .toolbar(.automatic, for: .navigationBar)
                .toolbar {
                    Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                }
                
                .navigationBarTitleDisplayMode(.large)
                .padding()
            } //: ScrollView
        } //: NavigationView
    }
}

#Preview {
    SettingsView()
}
