//
//  ContentView.swift
//  ToDoMaterialDesignAppPresentation
//
//  Created by Matthias Zarzecki on 23.07.21.
//

import SwiftUI

struct AllTasksView: View {
  @State var tasks: [Task] = [Task]()
  
  var body: some View {
    NavigationView {
      Group {
        if tasks.isEmpty {
          Text("Nothing to do!")
            .font(.title)
        } else {
          GeometryReader { geometry in
            ScrollView {
              ForEach(tasks, id: \.self) { task in
                TaskCell(
                  task: task,
                  width: geometry.size.width - 32*2
                )
              }
            }
          }
        }
      }
      .navigationBarTitle("TO DO", displayMode: .inline)
      .navigationBarItems(
        leading: Button(action: addTask, label: {
          Image(systemName: "square.grid.3x3.fill")
            .foregroundColor(.pastelRed)
        }),
        trailing: Button(action: addTask, label: {
          Image(systemName: "plus")
            .foregroundColor(.pastelRed)
        })
      )
    }
  }
  
  func addTask() {
    let task = Task(
      name: MockClasses.task.name,
      location01: MockClasses.task.location01,
      location02: MockClasses.task.location02,
      color: Color.getRandomColor()
    )
    tasks.append(task)
  }
}

struct AllTasksView_Previews: PreviewProvider {
  static var previews: some View {
    AllTasksView(tasks: [MockClasses.task])
    AllTasksView()
  }
}
