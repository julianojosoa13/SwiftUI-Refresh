//
//  ContentView.swift
//  SwiftUI-Tutorial
//
//  Created by Juliano RAHAJAHARIMANGA on 22/03/2025.
//

import SwiftUI

struct ContentView: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        
        AsyncImage(url: URL(string: imageURL), scale: 3.0) 
        {image in image
                .resizable()
                .scaledToFit()
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 128)
                .foregroundColor(.purple)
                .opacity(0.5)
        }.padding(40)
    }
}

#Preview {
    ContentView()
}
