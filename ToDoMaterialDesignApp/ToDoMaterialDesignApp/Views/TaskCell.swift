//
//  TaskCell.swift
//  ToDoMaterialDesignApp
//
//  Created by Matthias Zarzecki on 30.06.21.
//

import SwiftUI

struct TaskCell: View {
  let task: Task
  let width: CGFloat

  var body: some View {
    VStack {
      Text(task.name)
        .font(.title2)
        .foregroundColor(.white)
        .frame(width: width - 8*2, height: 32, alignment: .leading)

      HStack {
        Image(systemName: "mappin.and.ellipse")
          .foregroundColor(.white)
          .frame(width: 32, height: 32, alignment: .center)

        VStack {
          Text(task.location01)
            .foregroundColor(.white)
            .frame(width: width - 42, height: 32, alignment: .leading)
          Text(task.location02)
            .foregroundColor(.white)
            .frame(width: width - 42, height: 32, alignment: .leading)
        }

      }
    }
    .frame(width: width, height: 100)
    .overlay(
      Image(systemName: "square.and.pencil")
        .foregroundColor(.white),
      alignment: Alignment.topTrailing
    )
    .padding()
    .background(task.color)
    .shadow(color: task.color, radius: 10)
    .padding(EdgeInsets(top: 6, leading: 16, bottom: 6, trailing: 16))
  }
}

struct TaskCell_Previews: PreviewProvider {
  static var previews: some View {
    TaskCell(task: MockClasses.task, width: 350)
      .previewLayout(.sizeThatFits)
  }
}
