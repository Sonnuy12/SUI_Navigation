//
//  ItemView.swift
//  Blok4Homework7
//
//  Created by сонный on 19.11.2024.
//

import SwiftUI

struct ItemView: View {
    @StateObject var viewModel = ViewModel()
    let item: Items
    var body: some View {
        VStack {
            ZStack(alignment: .topTrailing) {
                if let imageName = item.image {
                    Image(imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 280)
                        .frame(maxHeight: .infinity)
                    
                    
                    Button {
                        print("кнопка 3 точки")
                    } label: {
                        Image(systemName: "ellipsis")
                            .resizable()
                            .scaledToFit()
                            .frame(width:30, height: 30)
                            .foregroundStyle(.white)
                    }
                    .padding(15)
                }
            }
            .background(Color.gray.opacity(0.3))
            .cornerRadius(50)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack() {
                    Button {
                        print(item.title ?? "" )
                    } label: {
                        if let text = item.title {
                            Text(text)
                                .foregroundStyle(.white)
                                .font(.system(size: 20,weight: .regular))
                                .padding(.all, 5)
                                .background(Color.gray.opacity(0.8))
                                .cornerRadius(10)
                        }
                    }
                }
            }
            if let text = item.text {
                Text(text)
                    .foregroundStyle(.white)
                    .font(.system(size: 18,weight: .regular))
                    .padding(.all, 15)
                    .background(Color.black)
                    .cornerRadius(15)
            }
            
            if let text = item.textField {
                ZStack(alignment: .topLeading){
                    RoundedRectangle(cornerRadius: 15)
                        .foregroundStyle(.black)
                    VStack(alignment: .leading, spacing: 5 ) {
                        Text(viewModel.formattedField)
                            .font(.system(size: 17,weight: .regular))
                            .foregroundStyle(.white)
                        
                        Text(text)
                            .foregroundStyle(.white)
                            .font(.system(size: 17,weight: .regular))
                            .padding(.all, 5)
                            .background(Color.black)
                            .cornerRadius(15)
                    }
                    .padding(.all, 15)
                }
            }
        }
    }
}
