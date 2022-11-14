//
//  ListRowView.swift
//  yln
//
//  Created by 이정후 on 2022/11/14.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}


struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListRowView(title: "This is first Title")
    }
}
