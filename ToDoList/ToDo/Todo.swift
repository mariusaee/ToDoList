//
//  Todo.swift
//  ToDoList
//
//  Created by Marius Malyshev on 10.11.2023.
//

import ComposableArchitecture
import SwiftUI

struct ToDo: Reducer {
    struct State: Equatable, Identifiable {
        let id: UUID
        @BindingState var description = ""
        @BindingState var isComplete = false
    }
    
    enum Action: BindableAction, Equatable, Sendable {
        case binding(BindingAction<State>)
    }
    
    var body: some Reducer<State, Action> {
      BindingReducer()
    }
}
