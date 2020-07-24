//
//  PrincipalCircle.swift
//  MiracleApp
//
//  Created by Raphaël Payet on 19/07/2020.
//  Copyright © 2020 Oriapy. All rights reserved.
//

import SwiftUI

struct PrincipalCircle: View {
    
    @EnvironmentObject var viewRouter : ViewRouter
    
    var body: some View {
        Button(action : {
            withAnimation(.easeInOut(duration : 0.5)) {
                self.viewRouter.started.toggle() 
            }
        }) {
            Circle()
                .foregroundColor(MMOrange)
                .shadow(color: MMOrange, radius: 20, x: 0, y: 20)
                .padding()
        }
    }
}

struct PrincipalCircle_Previews: PreviewProvider {
    static var previews: some View {
        PrincipalCircle().environmentObject(ViewRouter())
    }
}
