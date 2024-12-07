//
//  ViewModel.swift
//  Blok4Homework7
//
//  Created by сонный on 19.11.2024.
//

import Foundation
import SwiftUI

class ViewModel: ObservableObject {
    @Published var items: [Items] = [
        Items(image: "img1"),
        Items(image: "img2"),
        Items(image: "img3"),
        Items(image: "img4")
    ]
    @Published var itemsBtn: [Items] = [
        Items(title: "Лес"),
        Items(title: "Озеро"),
        Items(title: "Горы"),
        Items(title: "Поляна"),
        Items(title: "Ущелье"),
        Items(title: "Пляж"),
        Items(title: "Скалы"),
    ]
    
    @Published var itemsText: [Items] = [
        Items(text: " Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit")
    ]
    
    @Published var itemsText2: [Items] = [
        Items(textField: "Ut enim ad minim veniam, quis nostrud exercit ation ullamco laboris nisi"),
        Items(textField: "Ut enim ad minim veniam, quis nostrud exercit ation ullamco laboris nisi"),
        
    ]
    @Published var itemsTextBanner: [ItemsBanner] = [
        ItemsBanner(description: "Ut enim ad minim veniam, quis nostrud exercit ation ullamco laboris nisi")
    ]
    
    @Published var itemsBanner: [ItemsBanner] = [
        ItemsBanner(image: "banner1",isFavorite: false),
        ItemsBanner(image: "banner2",isFavorite: false),
        
    ]
    @Published var itemsBtnBanner: [ItemsBanner] = [
        ItemsBanner(title: "Лес"),
        ItemsBanner(title: "Горы"),
        ItemsBanner(title: "Ущелье"),
    ]
   

    var formattedDate: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ru_RU")
        formatter.dateFormat = "d MMMM"
        return formatter.string(from: Date())
    }
    
    var formattedYear: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy 'год'"
        return formatter.string(from: Date())
    }
    
    var formattedField: String {
        let formatter = DateFormatter()
        formatter.locale = Locale(identifier: "ru_RU")
        formatter.dateFormat = "dd.MM.yyyy"
        return formatter.string(from: Date())
    }
    
    // Метод для добавления текста в массив itemsText2
    func addItemToTextFieldArray(text: String) {
        let newItem = Items(textField: text)
        itemsText2.append(newItem)
    }
}
