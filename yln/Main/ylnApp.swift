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

    var body: some Scene {
        WindowGroup {
            NavigationView(){
                ListView()
            }
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
