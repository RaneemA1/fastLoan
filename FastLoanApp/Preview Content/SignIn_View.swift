//
//  SignIn_View.swift
//  FastLoanApp
//
//  Created by ٍٍRaneem A on 14/04/1445 AH.
//

import SwiftUI

struct SignIn_View: View {
 
        @State private var email = ""
        @State private var password = ""
        
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
                    
                    VStack(spacing: 25){
                        
                        
                        
  
                        
                        VStack(spacing: 18){
                            TextField("Enter your Email", text: $email)
                                .multilineTextAlignment(.leading)
                                .padding(.horizontal,50)
                            Divider()
                                .background(Color.white)
                                .frame(width: 350)
                            
                            SecureField("Enter your Password", text: $password)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.white)
                                .padding(.horizontal,50)
                            
                            Divider()
                                .background(Color.white)
                                .frame(width: 350)
                            
                        }
                        
                        NavigationLink {
  
                            TabView()
                        } label:{
                            
                            Text("Sign in")
                                .foregroundColor(.purple).bold()
                                .font(.title2)
                                .frame(width: 290, height: 60)
                                .background(Color.white)
                                .cornerRadius(90)
                            
                        }
                        
                        HStack{
                            Text("Don't have an acccount?")
                                .foregroundColor(.white)
                                .font(.callout)
                            NavigationLink {
                                
                              
                            } label: {
                                
                                Text("Register")
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




    struct  SignIn_View_Previews: PreviewProvider {
        static var previews: some View {
            SignIn_View()
        }
    }

