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

struct TextEditorView: View {
    
    @Environment(\.presentationMode) var presentaionMode
    @EnvironmentObject var listViewModel: ListViewModel
//    @State var text: String = ""
    @State var savedText: String = ""
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type someting here", text: $savedText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(hue: 1.0, saturation: 0.0, brightness: 0.919))
//                    .colorMultiply(Color(hue: 1.0, saturation: 0.0, brightness: 0.833))
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Spacer()
            }
            .padding()
        }
        .navigationTitle("일기장")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    func saveButtonPressed() {
        if textIsAppropriate() {
        listViewModel.addItem(title: savedText)
        presentaionMode.wrappedValue.dismiss()
        }
    }
    
    func textIsAppropriate() -> Bool {
        if savedText.count < 3 {
            alertTitle = "세글자 이상이어야 합니다."
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text(alertTitle))
    }
}

struct TextEditorView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TextEditorView()
        }
        .environmentObject(ListViewModel())
    }
}
