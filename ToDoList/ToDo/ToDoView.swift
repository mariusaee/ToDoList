//
//  ToDoView.swift
//  ToDoList
//
//  Created by Marius Malyshev on 10.11.2023.
//

import ComposableArchitecture
import SwiftUI

struct TodoView: View {
    let store: StoreOf<ToDo>
    
    var body: some View {
        WithViewStore(self.store,
                      observe: { $0 }) { viewStore in
            HStack {
                Button {
                    viewStore.$isComplete.wrappedValue.toggle()
                } label: {
                    Image(systemName: viewStore.isComplete ? "checkmark.square" : "square")
                }
                .buttonStyle(.plain)
                
                TextField("Untitled Todo", text: viewStore.$description)
            }
            .foregroundColor(viewStore.isComplete ? .gray : nil)
        }
    }
}
