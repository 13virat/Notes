//
//  ContentView.swift
//  Notes Watch App
//
//  Created by Mac pro on 03/09/25.
//

import SwiftUI

struct ContentView: View {
    
    // PROPERTY
    @State private var notes: [Note] = [Note]()
    @State private var text: String = ""
    
    // FUNCTION
    func save() {
        dump(notes)
    }
    
    // BODY
    var body: some View {
        NavigationStack {   // ✅ Wrap everything inside NavigationStack
            VStack {
                HStack(alignment: .center, spacing: 6) {
                    TextField("Add New Notes", text: $text)
                    
                    Button {
                        // 1. Only run the button when the text field is not empty
                        guard text.isEmpty == false else { return }
                        // 2. Create a new note item and initialize with text value
                        let note = Note(id: UUID(), text: text)
                        // 3. Add the new note to the array
                        notes.append(note)
                        // 4. Make the text field empty
                        text = ""
                        // 5. Save the notes (function)
                        save()
                        
                    } label: {
                        Image(systemName: "plus.circle")
                            .font(.system(size: 42, weight: .semibold))
                    }
                    .fixedSize()
                    .buttonStyle(PlainButtonStyle())
                    .foregroundColor(.accentColor)
                }
                Spacer()
                
                // Show total notes count
                Text("\(notes.count)")
            } // VStack
            .navigationTitle("Notes")
            .navigationBarTitleDisplayMode(.inline)  // ✅ Now this will show
        } // NavigationStack
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
