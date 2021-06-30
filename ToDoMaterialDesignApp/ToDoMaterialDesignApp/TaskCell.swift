//
//  TaskCell.swift
//  ToDoMaterialDesignApp
//
//  Created by Matthias Zarzecki on 30.06.21.
//

import SwiftUI

struct TaskCell: View {
  let width: CGFloat
  let color: Color

  var body: some View {
    VStack {
      Text("10 PM Meeting with K.M.")
        .foregroundColor(.white)
    }
    .frame(width: width, height: 100, alignment: .center)
    .padding()
    .background(color)
    .shadow(color: color, radius: 10)
    .padding()
  }
}

struct TaskCell_Previews: PreviewProvider {
  static var previews: some View {
    TaskCell(
      width: 350,
      color: Color(red: 0.865, green: 0.530, blue: 0.518)
    )
    .previewLayout(.sizeThatFits)
  }
}