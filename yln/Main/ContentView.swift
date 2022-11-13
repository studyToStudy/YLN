//
//  ContentView.swift
//  yln
//
//  Created by 이정후 on 2022/11/12.
//

import SwiftUI
//import CoreData

struct ContentView: View {
    
    @State var toDoString = ""
    
    var body: some View {
        VStack{
            Text("YLN")
                .font(.title.bold())
                .strikethrough()
            HStack(){
                Image(systemName: "square.and.pencil")
                TextField("YLN", text: $toDoString)
                    .font(.title)
                //                  .multilineTextAlignment(.center)
            }
            .textFieldStyle(DefaultTextFieldStyle())
            .frame(width: 300, height: 50, alignment: .center)
            ListView()
        }
    }
}

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }
