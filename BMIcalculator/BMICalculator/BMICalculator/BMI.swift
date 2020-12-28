//
//  BMI.swift
//  BMICalculator
//
//  Created by Mariam2 on 12/28/20.
//

import SwiftUI

struct BMI: View {
    
    @State var weight = ""
    @State var height = ""
    
    
    var body: some View {
        
        VStack {
        Text("مرحبا بك في حاسبة ال BMI")
            .font(.largeTitle)
            .fontWeight(.bold)
        
            
            TextField("الطول بالمتر", text: $height).modifier(BMITextFieldModifier())
            TextField("الوزن بالكيلو جرام", text:$weight).modifier(BMITextFieldModifier())
            
            Button(action:{ var bmiCal = 55 / (1.5*1.5) },
                   label: {
                Text("احسب")
                    .foregroundColor(.white)
                    .padding(.vertical,10)
                    .padding(.horizontal, 40)
                    .background(Color.blue)
                    .clipShape(Capsule())
                   }
                   
            )
            .padding()
            
            
            
        }
        .padding()
    }
}

struct BMITextFieldModifier : ViewModifier {
    
    func body(content: Content) -> some View{
        content
            .multilineTextAlignment(.trailing)
            .textFieldStyle(RoundedBorderTextFieldStyle())
    }
}

struct BMI_Previews: PreviewProvider {
    static var previews: some View {
        BMI()
    }
}
