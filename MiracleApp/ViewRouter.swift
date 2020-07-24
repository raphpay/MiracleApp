//
//  ViewRouter.swift
//  MiracleApp
//
//  Created by Raphaël Payet on 19/07/2020.
//  Copyright © 2020 Oriapy. All rights reserved.
//

import SwiftUI

class ViewRouter : ObservableObject {
    @Published var page = 1
    @Published var started = false
}
