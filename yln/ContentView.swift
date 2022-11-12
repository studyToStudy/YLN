//
//  ContentView.swift
//  yln
//
//  Created by 이정후 on 2022/11/12.
//

import SwiftUI
//import CoreData

struct ContentView: View {
    var body: some View {
        Button {
            print("Hit")
        } label: {
            Text("Leo")
                .padding()
                .frame(width: 150)
                .foregroundColor(.white)
                .background(.blue)
                .cornerRadius(13)
        }

    }
}
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
        }
    }

