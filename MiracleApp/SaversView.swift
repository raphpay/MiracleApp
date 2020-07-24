//
//  SaversView.swift
//  MiracleApp
//
//  Created by Raphaël Payet on 19/07/2020.
//  Copyright © 2020 Oriapy. All rights reserved.
//

import SwiftUI

struct SaversView: View {
    
    @EnvironmentObject var viewRouter : ViewRouter
    
    var body: some View {
        Text("Savers View")
    }
}

struct SaversView_Previews: PreviewProvider {
    static var previews: some View {
        SaversView().environmentObject(ViewRouter())
    }
}
