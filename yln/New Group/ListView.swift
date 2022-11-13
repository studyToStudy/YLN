//
//  ListView.swift
//  yln
//
//  Created by 이정후 on 2022/11/13.
//

import SwiftUI

struct ListView: View {
    
    struct TodoList: Identifiable {
        let id = UUID()
        var content: String
    }
    
    private var todoList = [
        TodoList(content: "SwiftUI"),
        TodoList(content: "할 수 있다.")
    ]
    
    var body: some View {
        List {
            ForEach(0..<todoList.count, id: \.self) { i in
                HStack {
                    Button(action: {}, label: {
                        Image(systemName: "square")
                    })
                    Text(todoList[i].content)
                    Spacer()
                    Button(action: {}, label: {
                        Image(systemName: "trash")
                    })
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
