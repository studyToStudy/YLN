//
//  ContentView.swift
//  yln
//
//  Created by 이정후 on 2022/11/12.
//

import SwiftUI
//import CoreData

struct ContentView: View {
    
    @EnvironmentObject var listViewModel: ListViewModel
    
    var body: some View {
            List {
                ForEach(listViewModel.items) { item in
//                    Text("Hi")
                    ListRowView(item: item)
                }
                .onDelete(perform: listViewModel.deleteItem)
                .onMove(perform: listViewModel.moveItem)
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
            .environmentObject(ListViewModel())
    }
}

