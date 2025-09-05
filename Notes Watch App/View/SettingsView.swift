//
//  SettingsView.swift
//  Notes Watch App
//
//  Created by Mac pro on 05/09/25.
//

import SwiftUI

struct SettingsView: View {
    //Property
    @AppStorage("lineCount") var lineCount: Int = 1
    @State private var value: Float = 1.0
    
    //Function
    func update(){
        lineCount = Int(value)
    }
    
    //Body
    var body: some View {
        VStack(spacing: 8){
            //Header
            HeaderView(title: "Settings")
            //Actual Line
            Text("Lines:\(lineCount)".uppercased())
                .fontWeight(.bold)
            //Slider
            Slider(value: Binding(get: {
                self.value
            }, set: { (newValue) in
                self.value = newValue
                self.update()
                
            }), in: 1...4, step: 1)
                .accentColor(.accentColor)
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
