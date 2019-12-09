//
//  ContentView.swift
//  Sheet in SwiftUI
//
//  Created by Md Khaled Hasan Manna on 9/12/19.
//  Copyright © 2019 Md Khaled Hasan Manna. All rights reserved.
//

import SwiftUI



struct ContentView2 : View{
    
    var body : some View{
        
        Text("Hello World")
    }
}


struct ContentView: View {
    
    @State var isShowingSheet : Bool = false
    
    var body: some View {
        
        Button(action: {
            
            self.isShowingSheet.toggle()
        }, label: {
            
            Text("Click Here")
            }).sheet(isPresented: $isShowingSheet, content: {
                
                ContentView2()
            })
    }
}





struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
