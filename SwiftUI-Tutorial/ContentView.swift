//
//  ContentView.swift
//  SwiftUI-Tutorial
//
//  Created by Juliano RAHAJAHARIMANGA on 22/03/2025.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
            .opacity(0.5)
    }
}

struct ContentView: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        
        AsyncImage(url: URL(string: imageURL), scale: 3.0) 
        {image in image
                .imageModifier()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .iconModifier()
                
        }.padding(40)
    }
}

#Preview {
    ContentView()
}
