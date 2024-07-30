//
//  ContentView.swift
//  ToDoList App
//
//  Created by Scholar on 7/30/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    //links viewss, initially second view is not shown
    var body: some View {
        VStack {
            HStack {
                Text("Tasks")
                    .font(.system(size : 40))
                    .fontWeight(.bold)
                Spacer()
                Button {
                    withAnimation {
                        self.showNewTask =  true
                        
                    } 
                }label: {
                        Text("+")
                }
                .font(.system(size: 40))
                .fontWeight(.black)
                .foregroundColor(.indigo)
            }
            .padding()
            Spacer()
        }
        if showNewTask {
            NewToDoView()
        }
    }
}

#Preview {
    ContentView()
}
