//
//  ContentView.swift
//  appThreeUI
//
//  Created by Scholar on 7/12/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var titleText = "What is your name?"
    var body: some View {
        ZStack{
            Color(.systemPink)
            
        }
        VStack(spacing: 100.0) {
           
           
            Text(titleText)
                .font(.title)
            TextField("Name", text: $name).multilineTextAlignment(.center).font(.title).border(Color.gray, width: 1)
            Button("Submit") {
                //print(name)
                titleText = "Welcome \(name)!"
            }.font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.purple)

        }.padding()
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
