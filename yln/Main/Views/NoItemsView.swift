//
//  NoItemsView.swift
//  yln
//
//  Created by 이정후 on 2022/11/19.
//

import SwiftUI

struct NoItemsView: View {
    var body: some View {
        ScrollView {
            VStack {
                Text("There are no Items!")
                    .font(.title)
                    .fontWeight(.semibold)
            }
            .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

struct NoItemsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemsView()
                .navigationTitle("Title")
        }
    }
}
