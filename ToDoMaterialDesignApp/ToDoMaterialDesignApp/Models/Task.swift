//
//  Task.swift
//  ToDoMaterialDesignApp
//
//  Created by Matthias Zarzecki on 02.07.21.
//

import SwiftUI

struct Task: Hashable, Identifiable {
  let id = UUID()
  let name: String
  let location01: String
  let location02: String
  var color: Color
}
