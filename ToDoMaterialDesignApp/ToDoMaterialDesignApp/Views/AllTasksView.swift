//
//  ContentView.swift
//  ToDoMaterialDesignApp
//
//  Created by Matthias Zarzecki on 30.06.21.
//

import SwiftUI

struct AllTasksView: View {
  @State var tasks: [Task]?

  var body: some View {
    NavigationView {
      Group {
        if let unwrappedTasks = tasks {
          GeometryReader { geometry in
            ScrollView {
              ForEach(unwrappedTasks, id: \.self) { task in
                TaskCell(
                  task: task,
                  width: geometry.size.width - 32*2
                )
              }
            }
          }
        } else {
          Text("Nothing to do!")
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
    if tasks == nil {
      tasks = [Task]()
    }

    var task = MockClasses.task
    task.color = Color.getRandomColor()
    tasks!.append(task)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    AllTasksView(tasks: [MockClasses.task])
    AllTasksView()
  }
}
