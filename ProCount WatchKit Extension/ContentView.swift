//
//  ContentView.swift
//  ProCount WatchKit Extension
//
//  Created by Xiaochun Shen on 2021/2/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentCount = UserDefaults.standard.integer(forKey: "currentCount")
    
    @State private var isDecrementOn = false
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 10) {
                HStack(alignment: .center, spacing: 20) {
                    Button(action: {
                        self.isDecrementOn.toggle()
                    }, label: {
                        Image(systemName: isDecrementOn ?  "minus" :"plus" )
                            .font(.headline)
                            .foregroundColor(.blue)
                            .aspectRatio(contentMode: .fit)
                    })
                    
                    Button(action: {
                        self.currentCount = 0
                        UserDefaults.standard.set(0, forKey: "currentCount")
                        
                    }, label: {
                        Image(systemName: "trash")
                            .font(.headline)
                            .foregroundColor(.red)
                            .aspectRatio(contentMode: .fit)
                    })
                    
                }
                
                Button(action: {
                    self.perforMaths(isSubstract: self.isDecrementOn, num: 1)
                }, label: {
                    Text("\(self.currentCount)")
                        .font(.title)
                       
                })
                
                ScrollView(.horizontal) {
                    HStack(alignment: .center, spacing: 10) {
                        Button(action: {
                            self.perforMaths(isSubstract: self.isDecrementOn, num: 1)
                        }){
                            Text(isDecrementOn ? "-1" : "+1")
                        }
                        
                        Button(action: {
                            self.perforMaths(isSubstract: self.isDecrementOn, num: 2)
                        }){
                            Text(isDecrementOn ? "-2" : "+2")
                        }
                        
                        Button(action: {
                            self.perforMaths(isSubstract: self.isDecrementOn, num: 3)
                        }){
                            Text(isDecrementOn ? "-3" : "+3")
                        }
                        
                        Button(action: {
                            self.perforMaths(isSubstract: self.isDecrementOn, num: 4)
                        }){
                            Text(isDecrementOn ? "-4" : "+4")
                        }
                        
                        Button(action: {
                            self.perforMaths(isSubstract: self.isDecrementOn, num: 5)
                        }){
                            Text(isDecrementOn ? "-5" : "+5")
                        }
                        
                        Button(action: {
                            self.perforMaths(isSubstract: self.isDecrementOn, num: 10)
                        }){
                            Text(isDecrementOn ? "-10" : "+10")
                                .frame(width: 50)
                        }
                        
                        
                        
                        }
                    
                }
                
            }.padding(.all)
        }
    }
    
    
    func perforMaths(isSubstract: Bool, num: Int) {
        
        var result = self.currentCount
        
        if isSubstract == true {
            result -= num
        } else {
            result += num
        }
        
        if result >= 0 {
            currentCount = result
            UserDefaults.standard.setValue(currentCount, forKey: "currentCount")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
