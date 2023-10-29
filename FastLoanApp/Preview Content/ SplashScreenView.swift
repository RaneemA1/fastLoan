//
//   SplashScreenView.swift
//  FastLoanApp
//
//  Created by ٍٍRaneem A on 14/04/1445 AH.
//

import SwiftUI

struct _SplashScreenView: View {
    
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        
        ZStack{
            
            if isActive{
              WelcomeView()
            }else {
                
                backgroundCustom()
                    
                VStack{
                    
                    VStack{
                        
                        Image("pig")
                            .resizable()
                            .frame(width:200, height: 200)
                            .foregroundColor(.white)
                            .padding()
                        Text("FastLoan")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                            .foregroundColor(.white.opacity(0.90))
                        
                        
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.8
                            self.opacity = 1.0
                        }
                    }
                }
                
                .ignoresSafeArea()
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        
                        withAnimation{
                            self.isActive = true
                        }
                    }
                }
            }
        }
    }
}
