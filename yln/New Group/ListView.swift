//
//  ListView.swift
//  yln
//
//  Created by 이정후 on 2022/11/13.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - data point
 View - UI
 ViewModel - manages Models for view
 
 */

struct ListView: View {
    @State var text: String = "여기에 글을 작성하세요 😇"
    @State var savedText: String = ""
    
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $text)
                    .frame(height: 250)
                    .colorMultiply(Color(hue: 1.0, saturation: 0.0, brightness: 0.833))
                    .cornerRadius(10)
                Button(action: {
                    savedText = text
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Text(savedText)
                
                Spacer()
            }
            .padding()
            .navigationTitle("일기장")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
