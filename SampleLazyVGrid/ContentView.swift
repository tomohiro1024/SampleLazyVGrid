//
//  ContentView.swift
//  SampleLazyVGrid
//
//  Created by 宮野智宏 on 2024/01/14.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    @State var inputText = ""
    
    var body: some View {
        VStack {
            Toggle(isOn: $isOn) {
                if isOn {
                    Text("ON")
                } else {
                    Text("OFF")
                }
            }
            .padding()
            TextField("ここにヒント", text: $inputText)
                .textFieldStyle(.roundedBorder)
                .padding()
            Text("\(inputText)さん、こんにちは！")
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
