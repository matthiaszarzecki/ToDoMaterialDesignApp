//
//  TaskCell.swift
//  ToDoMaterialDesignAppPresentation
//
//  Created by Matthias Zarzecki on 23.07.21.
//

import SwiftUI

struct TaskCell: View {
  let task: Task
  let width: CGFloat
  
  var height: CGFloat = 20
  
  var body: some View {
    VStack {
      Text(task.name)
        .font(.title2)
        .foregroundColor(.white)
        .frame(width: width - 8*2, height: 32, alignment: .leading)
    }
    .frame(width: width, height: height, alignment: .center)
    .padding()
    .background(task.color)
    .shadow(color: task.color, radius: 10)
    .padding(EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16))
  }
}

struct TaskCell_Previews: PreviewProvider {
  static var previews: some View {
    TaskCell(
      task: MockClasses.task,
      width: 350
    )
    .previewLayout(.sizeThatFits)
  }
}
