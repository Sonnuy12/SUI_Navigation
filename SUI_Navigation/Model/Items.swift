//
//  Items.swift
//  Blok4Homework7
//
//  Created by сонный on 19.11.2024.
//

import Foundation

struct Items: Identifiable {
    var id: String = UUID().uuidString
    var image: String?
    var data: Data?
    var title: String?
    var text: String?
    var textField: String? 
}
