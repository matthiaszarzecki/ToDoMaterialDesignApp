//
//  Color-Extension.swift
//  ToDoMaterialDesignApp
//
//  Created by Matthias Zarzecki on 02.07.21.
//

import SwiftUI

extension Color {
  static let pastelRed = Color(red: 0.865, green: 0.530, blue: 0.518)
  static let pastelPink = Color(red: 0.870, green: 0.593, blue: 0.718)
  static let pastelPurple = Color(red: 0.683, green: 0.537, blue: 0.706)

  static func getRandomColor() -> Color {
    return [pastelRed, pastelPink, pastelPurple].randomElement()!
  }
}
