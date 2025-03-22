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
    }
}

#Preview {
    ContentView()
}
