//
//  backgroundCustom.swift
//  FastLoanApp
//
//  Created by ٍٍRaneem A on 14/04/1445 AH.
//

import SwiftUI

struct backgroundCustom: View {
    var body: some View {
        Rectangle()
        
            .frame(maxWidth:.infinity, maxHeight: .infinity ,alignment: .center)
        LinearGradient(gradient: Gradient(colors: [Color.purple,Color.purple]), startPoint: .top, endPoint: .bottom)
   // }
 
    .ignoresSafeArea()
}
}



struct  backgroundCustom_Previews: PreviewProvider {
static var previews: some View {
    backgroundCustom()
}
}
