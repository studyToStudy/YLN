//
//  AddView.swift
//  yln
//
//  Created by 이정후 on 2022/11/14.
//

import SwiftUI

struct AddView: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView {
            ListView()
        }
        .navigationTitle("Add an Item✏️")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            AddView()
        }
    }
}
