//
//  ContentView.swift
//  BMICalculator
//
//  Created by Mariam2 on 12/28/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink( destination:  BMI(), label: {
                    Text("First View")
                    
                }) .navigationTitle("Nav Title")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
