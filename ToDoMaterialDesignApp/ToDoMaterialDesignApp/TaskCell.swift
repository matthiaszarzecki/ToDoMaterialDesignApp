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
        .font(.title2)
        .foregroundColor(.white)
        .frame(width: width - 8*2, height: 32, alignment: .leading)

      HStack {
        Image(systemName: "mappin.and.ellipse")
          .foregroundColor(.white)
          .frame(width: 32, height: 32, alignment: .center)

        VStack {
          Text("3773 Jail Drive")
            .foregroundColor(.white)
            .frame(width: width - 42, height: 32, alignment: .leading)
          Text("Peoria, IL 61602")
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
