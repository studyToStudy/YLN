//
//  ItemModel.swift
//  yln
//
//  Created by 이정후 on 2022/11/15.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
