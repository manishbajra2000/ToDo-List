//
//  ListRowView.swift
//  TodoList
//
//  Created by Manish Harsha Bajracharya on 14/09/2024.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview {
  Group {
    ListRowView(item: ItemModel(title: "This is the first item", isCompleted: false))
    ListRowView(item: ItemModel(title: "This is the second item", isCompleted: true))
  }
}
