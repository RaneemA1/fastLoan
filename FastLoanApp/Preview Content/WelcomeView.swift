//
//  WelcomeView.swift
//  FastLoanApp
//
//  Created by ٍٍRaneem A on 14/04/1445 AH.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            VStack{
                VStack{
                    Image(systemName: "swift")
                        .resizable()
                        .frame(width:120, height: 120)
                        .foregroundColor(.white)
                        .padding()
                    Text("FastLoan")
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                }
                .padding()
                .frame(maxWidth:.infinity )
                
                VStack(spacing: 30){
                    Text("Welcome!")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                    
                    NavigationLink {
                        
                        SignIn_View()
                    } label: {
                        
                        Text("Sign in")
                            .foregroundColor(.purple).bold()
                            .font(.title2)
                            .frame(width: 280, height: 60)
                            .background(Color.white)
                            .cornerRadius(90)
                        
                    }
                 
                    
                    HStack{
                        Text("or")
                            .foregroundColor(.white)
                            .font(.callout)

                        NavigationLink {
                            
                        
                        } label: {
                            Text("Create an account")
                                .underline()
                                .foregroundColor(.white)
                        }
                    }
                    
                    
                }
                .frame(maxWidth:.infinity, maxHeight: .infinity )
                
            }.background(
                
                LinearGradient(gradient: Gradient(colors: [Color.purple,Color.purple]), startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
            )
        }
    }
    
}




struct  Welcome_View_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

