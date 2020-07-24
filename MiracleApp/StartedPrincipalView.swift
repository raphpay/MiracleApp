//
//  StartedPrincipalView.swift
//  MiracleApp
//
//  Created by Raphaël Payet on 19/07/2020.
//  Copyright © 2020 Oriapy. All rights reserved.
//

import SwiftUI

struct StartedPrincipalView: View {
    
    @EnvironmentObject var viewRouter : ViewRouter
    
    var body: some View {
        ZStack {
            MMOrange
            Button(action : {
                withAnimation(.easeInOut(duration : 0.5)) {
                    self.viewRouter.started.toggle()
                }
            }) {
                Text("Started")
            }
        }.edgesIgnoringSafeArea(.all)
        .frame(width: screen.width, height: screen.height + 100)
        
    }
}

struct StartedPrincipalView_Previews: PreviewProvider {
    static var previews: some View {
        StartedPrincipalView().environmentObject(ViewRouter())
    }
}
