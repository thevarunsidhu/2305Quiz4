//
//  ContentView.swift
//  Quiz4
//
//  Created by Varun Sidhu on 2022-02-23.
//

import SwiftUI

struct  Child{
    var name: String = ""
}

struct ContentView: View {
    
    @State var child: Child = Child()
    @State var name: String = ""
    
    @State var isSubmitted = false
    
    
    var body: some View {

        ZStack(alignment: .bottomTrailing){
            Color.purple
                    .ignoresSafeArea()
                   VStack {
                       Text("Child Names").font(Font.system(size:40))
                           .fontWeight(.bold)
                           .padding()
                           .font(.headline)
                           .foregroundColor(.black)
                           
                           

                       if isSubmitted{
                           VStack(alignment: .leading){
                               Text(child.name)
                                   .frame(width:100, alignment:.leading)
                                   .foregroundColor(.black)
                                   .background(.white)
                               
                           }
                           .frame(maxWidth: .infinity, alignment: .leading)
                           .padding()
                       }
                       Spacer()
                       
                       
                       
                        HStack {
                            TextField("Name ", text: $name)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .frame(width: 200, height: 40)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                .padding(.horizontal)
                        }
                       
                       Button(action: {
                           guard !name.isEmpty else { return }
                           child = Child(name:name)
                           isSubmitted.toggle()
                       }, label: {
                           Text("Submit")
                               .frame(width: 80, height: 40, alignment: .center)
                               .foregroundColor(.black)
                               .background(.white)
                               .clipShape(RoundedRectangle(cornerRadius: 10))
                               .padding()
                                        
                        })
                    }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
