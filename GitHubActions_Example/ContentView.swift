//
//  ContentView.swift
//  GitHubActions_Example
//
//  Created by Mahfuz on 2025-04-12.
//

import SwiftUI

struct Item: Identifiable {
    var id: UUID = UUID()
    var title: String
    var purdate: Date
}

var list: [Item] =
    [
        Item(title: "Hello", purdate: Date()),
        Item(title: "World", purdate: Date()),
        Item(title: "11111", purdate: Date()),
        Item(title: "22222", purdate: Date())
    ]

 //asdf
struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            ScrollView {
                ForEach(list) { item in
                    Text(item.title)
                }
            }
            .background(Color.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
