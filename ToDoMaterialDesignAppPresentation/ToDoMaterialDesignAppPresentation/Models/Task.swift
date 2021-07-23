//
//  Task.swift
//  ToDoMaterialDesignAppPresentation
//
//  Created by Matthias Zarzecki on 23.07.21.
//

import Foundation
import SwiftUI

struct Task: Hashable, Identifiable {
  let id = UUID()
  let name: String
  let location01: String
  let location02: String
  let color: Color
}
