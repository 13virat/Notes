//
//  HeaderView.swift
//  Notes Watch App
//
//  Created by Mac pro on 05/09/25.
//

import SwiftUI

struct HeaderView: View {
    //Property
    var title: String = ""
    
    //Body
    var body: some View {
        VStack {
            // Title
            if title !=  "" {
                Text(title.uppercased())
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(.accentColor)
            }
            //Seperator
            HStack{
                Capsule()
                    .frame(height: 1)
                Image(systemName: "note.text")
                Capsule()
                    .frame(height: 1)
            }//HStack
            .foregroundColor(.accentColor)
        }//. VStack
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HeaderView(title: "Credits")
            HeaderView()
        }
    }
}
