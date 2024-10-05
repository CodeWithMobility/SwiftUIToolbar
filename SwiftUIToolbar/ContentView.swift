//
//  ContentView.swift
//  SwiftUIToolbar
//
//  Created by Manu Aravind on 05/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Text("Hello, SwiftUI Toolbar!")
                .navigationTitle("Toolbar Example")
                .toolbar {
                    // Adding a button on the leading side of the toolbar
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            print("Leading button tapped!")
                        }) {
                            Image(systemName: "plus")
                        }
                    }
                    
                    // Adding a button on the trailing side of the toolbar
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            print("Trailing button tapped!")
                        }) {
                            Image(systemName: "gear")
                        }
                    }
                    
                    // Adding a title in the center
                    ToolbarItem(placement: .principal) {
                        Text("Center Title")
                            .font(.headline)
                    }
                    
                    ToolbarItemGroup(placement: .bottomBar) {
                        Button("First") {
                            print("First tapped")
                        }
                        Spacer()
                        Button("Second") {
                            print("Second tapped")
                        }
                    }
                }
        }
    }
}


#Preview {
    ContentView()
}
