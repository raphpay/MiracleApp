//
//  PrincipalView.swift
//  MiracleApp
//
//  Created by Raphaël Payet on 19/07/2020.
//  Copyright © 2020 Oriapy. All rights reserved.
//

import SwiftUI

struct PrincipalView: View {
    
    @EnvironmentObject var viewRouter : ViewRouter
    
    var body: some View {
        VStack {
            if viewRouter.started {
                StartedPrincipalView()
                    .transition(.opacity)
            } else {
                PrincipalCircle()
                    .transition(.scale(scale: 3))
            }
        }
    }
}

struct PrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        PrincipalView().environmentObject(ViewRouter())
    }
}
