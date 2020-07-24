//
//  MotherView.swift
//  MiracleApp
//
//  Created by Raphaël Payet on 19/07/2020.
//  Copyright © 2020 Oriapy. All rights reserved.
//

import SwiftUI

let screen = UIScreen.main.bounds

struct MotherView: View {
    
    @EnvironmentObject var viewRouter : ViewRouter
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [MMWhite, MMWhite, MMYellow]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                VStack {
                    if viewRouter.page == 0 {
                        TaskView()
                            .transition(AnyTransition.move(edge: .leading).combined(with: .opacity))
                    } else if viewRouter.page == 1 {
                        PrincipalView()
                            .transition(.opacity)
                    } else if viewRouter.page == 2 {
                        SaversView()
                        .transition(AnyTransition.move(edge: .trailing).combined(with: .opacity))
                    }
                }
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .stroke()
                        
                    
                    VStack {
                        HStack(spacing : 50) {
                            Button(action : {
                                withAnimation {
                                    self.viewRouter.page = 0
                                }
                            }) {
                                SFSymbolImage(name : "wind")
                            }
                            
                            Button(action : {
                                withAnimation {
                                    self.viewRouter.page = 1
                                }
                            }) {
                                SFSymbolImage(name : "play")
                            }

                            Button(action : {
                                withAnimation {
                                    self.viewRouter.page = 2
                                }
                            }) {
                                SFSymbolImage(name : "list.bullet")
                            }
                            
                        }
                        Rectangle()
                            .frame(width : 50, height : 2)
                            .offset(x : viewRouter.page == 0 ? -(screen.width * 2/3) / 3 : 0)
                            .offset(x : viewRouter.page == 2 ? (screen.width * 2/3) / 3 : 0)
                            .animation(.easeInOut)
                    }
                }.frame(width : screen.width * 2/3, height : 60)
                    .offset(y : viewRouter.started ? 100 : 0)
                    .animation(.easeInOut(duration : 0.5))
                .padding()
                
                
            }
        }
    }
}

struct MotherView_Previews: PreviewProvider {
    static var previews: some View {
        MotherView().environmentObject(ViewRouter())
    }
}
    

struct SFSymbolImage: View {
    
    var name    : String
    var size    : CGFloat       = 30
    var weight  : Font.Weight   = .bold
    var design  : Font.Design   = .default
    
    var body: some View {
        Image(systemName: name)
            .renderingMode(.original)
            .font(.system(size: size, weight: weight, design: design))
        
    }
}
