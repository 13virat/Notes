//
//  CreditsView.swift
//  Notes Watch App
//
//  Created by Mac pro on 05/09/25.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack(spacing: 3){
           // Profile Image
            Image("ProfileImage")
                .resizable()
                .scaledToFit()
                .layoutPriority(1)
                .clipShape(Circle())
            
            
           // Header
            HeaderView(title: "Credits")
            
           // Content
            Text("Virat Gupta")
                .foregroundColor(.primary)
                .fontWeight(.bold)
            Text("Developer")
                .font(.footnote)
                .foregroundColor(.secondary)
                .fontWeight(.light)
        }//. VStack
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}
