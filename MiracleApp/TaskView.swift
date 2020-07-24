//
//  TaskView.swift
//  MiracleApp
//
//  Created by Raphaël Payet on 19/07/2020.
//  Copyright © 2020 Oriapy. All rights reserved.
//

import SwiftUI

struct TaskView: View {
    
    @EnvironmentObject var viewRouter : ViewRouter
    
    var body: some View {
        Text("TaskView")
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView().environmentObject(ViewRouter())
    }
}
