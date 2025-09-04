//
//  DetailView.swift
//  Notes Watch App
//
//  Created by Mac pro on 05/09/25.
//

import SwiftUI

struct DetailView: View {
    // Property
    let note: Note
    let count: Int
    let index: Int
    
    // Body
    var body: some View {
        VStack(alignment: .center, spacing: 3){
            //Header
            HStack{
                Capsule()
                    .frame(height: 1)
                Image(systemName: "note.text")
                Capsule()
                    .frame(height: 1)
            }//HStack
            .foregroundColor(.accentColor)
            //CONTENT
            Spacer()
            ScrollView(.vertical){
                Text(note.text)
                    .font(.title3)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
            }
            Spacer()
            //FOOTER
            HStack(alignment: .center){
                Image(systemName: "gear")
                    .imageScale(.large)
                Spacer()
                Text("\(count)/\(index+1)")
                Spacer()
                Image(systemName: "info.circle")
                    .imageScale(.large)
            }// HStack
            .foregroundColor(.secondary)
            
        }
        .padding(3)
    }
}
// Preview
struct DetailView_Previews: PreviewProvider {
    static var sampleData: Note = Note(id: UUID(), text: "Hello, World")
    static var previews: some View {
        DetailView(note: sampleData, count: 5, index: 1)
    }
}
