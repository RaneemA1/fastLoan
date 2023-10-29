//
//  HomeView.swift
//  FastLoanApp
//
//  Created by ٍٍRaneem A on 14/04/1445 AH.
//

import SwiftUI

struct HomeView: View {
    @State private var fill: CGFloat = 0.0
    
    
    
    var items: [(String,String , Color)] = [
        ("Lona amount","$6000" , .purple),
        ("Next payment","01.10.2023" , .purple),
        ("Your Debt","$500" , .purple)
    ]
    
    
    var body: some View {
        NavigationStack{
            ZStack {
                
                backgroundCustom()
                
                ScrollView{
                    
                  
                    ZStack {
            
                        Circle()
                            .frame(width: 280, height: 280)
                            .foregroundColor(.white)
                      
                        
                        Circle()
                            .trim(from: 0, to: self.fill)
                            .stroke(Color.green, style: StrokeStyle(lineWidth: 12)
                                   
                            )
                            .frame(width: 240, height: 240)
                            .rotationEffect(.init(degrees: -60))
                            .animation(Animation.linear(duration: 0.02))
                        
                        VStack(alignment: .center, spacing: 12) {
                            Text("Currunt loan \n balance")
                                .multilineTextAlignment(.center)
                            Text("$5\(Int(self.fill * 110.0))")
                                .foregroundColor(.purple)
                                .font(.title)
                                .bold()
                            Text("Due on \n 01.15.2023")
                                .multilineTextAlignment(.center)
                        }
                        
                        
                    }
                    .padding(22)
                    .padding(.bottom,12)
                    .onTapGesture {
                        
                        for x in 0...100{
                            DispatchQueue.main.asyncAfter(deadline: .now()+TimeInterval(x/22)){
                                self.fill += 0.02
                            }
                        }
                    }
                    
                    
                    VStack(spacing: 15){
                        
                        HStack{
                            Text("More details about your current lona")
                                .foregroundColor(.black)
                                .multilineTextAlignment(.leading)
                        } .padding(.top,50)
                        
                        ForEach(items, id: \.1) { item in
                            MyList(title:item.0, num:item.1, color: item.2)
                        }
                        
                        
                    }
                    .padding()
                    .background(.purple)
                    .frame(width: 400, height: 400)
                    
                    
                    ZStack{
                        
                        VStack{
                            Image(systemName:"creditcard")
                                .foregroundColor(.purple)
                                .font(.title)
                                .scaledToFit()
                                .frame(width:50, height: 50)
                            
                            Text("Make a lonan \n payment")
                                .multilineTextAlignment(.center)
                            
                        }.background(
                            Rectangle()
                                .cornerRadius(20)
                                .frame(width: 140, height: 140)
                            
                                .foregroundColor(Color.white)
                        )  .offset(x:-80)
                        
                        
                        VStack(spacing: 15){
                            Image(systemName: "pencil.and.list.clipboard")
                                .foregroundColor(.purple)
                                .font(.title)
                            Text("Issue \n new lona")
                                .multilineTextAlignment(.center)
                        }.background(
                            
                            Rectangle()
                                .cornerRadius(22)
                                .frame(width: 145, height: 145)
                            
                                .foregroundColor(Color.white)
                        )
                        .offset(x:80)
                        
                        
                    }
                    .offset(y:-420)
                    
                    
                }
                
                
            }
            .navigationBarBackButtonHidden(true)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    HStack(spacing: 117){
                        Button(action: {}){
                            Image(systemName: "person.fill")
                                .foregroundColor(.white)
                        }
                        Text("Home")
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




struct  Home_View_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}



struct MyList: View {
    
    var title : String
    var num : String
    var color : Color
    
    var body: some View {
        
        HStack(spacing: 18){
            Text(title)
                .foregroundColor(.black)
            Spacer()
            
            Text(num)
                .foregroundColor(color)
            
        }.padding()
            .background(
                Rectangle()
                    .cornerRadius(22)
                    .frame(maxWidth:.infinity, maxHeight: .infinity )
                    .foregroundColor(Color.white)
            )
    }
}
