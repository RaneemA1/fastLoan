//
//  TabView.swift
//  FastLoanApp
//
//  Created by ٍٍRaneem A on 14/04/1445 AH.
//

import SwiftUI

struct TabView: View {
    var body: some View {
    //    TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                        
                }
          Newloan()
                .tabItem {
                    Image(systemName: "circle.hexagongrid.fill")
                    Text("Explore")
                }
        }
    }


struct Tab_View_previews: PreviewProvider{
    static var previews: some View {
        TabView()
    }
}
