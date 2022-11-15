//
//  ContentView.swift
//  yln
//
//  Created by 이정후 on 2022/11/12.
//

import SwiftUI
//import CoreData

struct ContentView: View {
    
    @State var items: [ItemModel] = [
        ItemModel(title: "This is the first Title", isCompleted: false),
        ItemModel(title: "This is the second!", isCompleted: true),
        ItemModel(title: "Third", isCompleted: false)
    ]
    
    var body: some View {
            List {
                ForEach(items) { item in
                    Text("Hi")
                    // ListRowView(title: item)
                }
            }
            .listStyle(PlainListStyle())
            .navigationTitle("Todo List📝")
            .navigationBarItems(
                leading: EditButton(),
                trailing:
                    NavigationLink("ADD", destination: TextEditorView()))
    }
}

struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationView {
                ContentView()
        }
    }
}

