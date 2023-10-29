//
//  Newloan.swift
//  FastLoanApp
//
//  Created by ٍٍRaneem A on 14/04/1445 AH.
//

import SwiftUI

struct Newloan: View {
    @State private var sliderValue1: Double = 0.7
    @State private var sliderValue2: Double = 0.11
    
    var items: [(String,String , Color)] = [
        ("Lona amount","$6000" , .purple),
        ("Next payment","01.10.2023" , .purple),
        ("Your Debt","$500" , .purple)
    ]
    
    var body: some View {
        NavigationStack{
            
            VStack(spacing:0){
                
                
                
                VStack(alignment:.leading){
                    
                    Text("Fill in the following options")
                        .font(.title3)
                        .bold()
                        .foregroundColor(.white)
                    
                    HStack{
                        Text("Loan amount")
                        Spacer()
                        Text("$8 500")
                            .padding(.top)
                    }
                    .bold()
                    .foregroundColor(.white)
                    
                    Slider(value: $sliderValue1, in: 0...1)
                        .padding()
                        .accentColor(Color.white)
                    
                    HStack{
                        Text("$500")
                        Spacer()
                        Text("$10 000")
                        
                    }
                    .bold()
                    .foregroundColor(.gray)
                    
                    HStack{
                        Text("Loan term")
                        Spacer()
                        Text("12 days")
                            .padding(.top)
                    }
                    .bold()
                    .foregroundColor(.white)
                    Slider(value: $sliderValue2, in: 0...1)
                        .padding()
                        .accentColor(Color.white)
                    
                    HStack{
                        Text("5 days")
                        Spacer()
                        Text("30 days")
                        
                    }
                    .bold()
                    .foregroundColor(.gray)
                }
                .padding()
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .background(
                    ZStack{
                        Rectangle()
                        
                        LinearGradient(gradient: Gradient(colors: [Color.purple,Color.purple]), startPoint: .top, endPoint: .bottom)
                    }
                        .ignoresSafeArea()
                )
                
                
                VStack{
                    
                    ForEach(items, id: \.1) { item in
                        MyList(title:item.0, num:item.1, color: item.2)
                    }.padding(.bottom)
                    
                    NavigationLink {
                        
                    } label:{
                        
                        Text("Get money")
                            .foregroundColor(.black).bold()
                            .font(.title3)
                            .frame(width: 270, height: 55)
                            .background(Color.white)
                            .cornerRadius(80)
                        
                    }
                    
                }
                .padding()
                .frame(maxWidth:.infinity,maxHeight: .infinity)
                .background(
                    ZStack{
                        Rectangle()
                        Color.purple
                    }
                        .ignoresSafeArea()
                )
                
            }
            .navigationBarBackButtonHidden(true) // Hide the back button
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    HStack(spacing: 100){
                        Button(action: {}){
                            Image(systemName: "person.fill")
                                .foregroundColor(.white)
                        }
                        Text("New Loan")
                            .foregroundColor(.white)
                            .font(.title3)
                        Button(action: {}){
                            Image(systemName: "bell.fill")
                                .foregroundColor(.white)
                        }
                    }
                }
                
            }
            
            
        }
    }
}

//#Preview {
//    New_loan_View()
//}

struct  New_loan_Viewpreviews: PreviewProvider{
    static var previews: some View {
        Newloan()
    }
}

