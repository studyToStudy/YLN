//
//  ContentView.swift
//  yln
//
//  Created by 이정후 on 2022/11/12.
//

import SwiftUI
//import CoreData

struct ContentView: View {
    
    @State var items: [String] = [
        "This is the first Title",
        "This is the second Title",
        "Third!~"
    ]
    
    var body: some View {
            List {
                ForEach(items, id: \.self) { item in
                    ListRowView(title: item)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Todo List📝")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("ADD", destination: ListView()))
    }
}

struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ContentView()
        }
    }
}

