//
//  ylnApp.swift
//  yln
//
//  Created by 이정후 on 2022/11/12.
//

import SwiftUI

@main
struct ylnApp: App {
    let persistenceController = PersistenceController.shared
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView(){
                ContentView()
            }
            .environmentObject(listViewModel)
            .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
