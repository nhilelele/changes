//
//  LocationLanding.swift
//  explorio
//
//  Created by Scholar on 6/27/23.
//hola

import SwiftUI

struct LocationLanding: View {
    struct GreenButtonStyle: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .fontWeight(.bold)
                .foregroundColor(.white)
                .accentColor(.clear)
                .frame(alignment: .center)
                .padding()
                .background(Color(red: 0.38, green: 0.42, blue: 0.22))
                .cornerRadius(15)
                .contentShape(Rectangle())
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.green, lineWidth: 0)
                )
        }
    }
    
    @State private var expanded = true
    var body: some View {
        VStack(alignment: .center) {
            Text("**Welcome to**")
                .font(.largeTitle)
                .foregroundColor(Color(red: 0.375, green: 0.425, blue: 0.217))
                .padding()
            Text("Mumbai, India")
                .font(.title)
                .foregroundColor(Color(red: 0.375, green: 0.425, blue: 0.217))
            
            Divider()
                .frame(width: 300, height: 1.5)
                .overlay(Color(red: 0.375, green: 0.425, blue: 0.217))
            Spacer()
                .frame(height: 30)
            
            DisclosureGroup("Things To Do") {
                    Text("Content")
                    .multilineTextAlignment(.center)
            }
            .buttonStyle(GreenButtonStyle())
            .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
            
            DisclosureGroup("Weather") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
            .buttonStyle(GreenButtonStyle())
            .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
            
            
            DisclosureGroup("Food") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
            .buttonStyle(GreenButtonStyle())
            .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
            
            DisclosureGroup("Stay") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
            .buttonStyle(GreenButtonStyle())
            .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
            
            DisclosureGroup("Transportation") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Content@*/Text("Content")/*@END_MENU_TOKEN@*/
            }
            .buttonStyle(GreenButtonStyle())
            .padding(EdgeInsets(top: 10, leading: 60, bottom: 16, trailing: 60))
        }
        
    }
}

struct LocationLanding_Previews: PreviewProvider {
    static var previews: some View {
        LocationLanding()
    }
}
