//
//  QuizQues1.swift
//  Blossom
//
//  Created by Dhurv Dugar on 19/04/23.
//

import Foundation
import SwiftUI


struct QuizQuestionOneView: View{
    
    @State private var ans: String = ""
    
    var body: some View{
        NavigationStack{
            VStack{
                
                Spacer()
                Text("What's the most effective method of contraception?")
                    .titleStyle()
                
                
                Spacer()
                Image("quiz1")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 350)

                Spacer()
                
                VStack{
                    HStack{
                        Button{
                            ans = "condoms"
                        } label: {
                            Text("Condoms")
                        }.buttonStyle(BlueButton()).buttonBorderShape(.capsule).buttonStyle(.borderedProminent)
                        
                        Button{
                            ans = "pill"
                        } label: {
                            Text("Pill")
                        }.buttonStyle(BlueButton()).buttonBorderShape(.roundedRectangle).buttonStyle(.borderedProminent)
                    }
                    
                    Button{
                        ans = "fcondom"
                    } label: {
                        Text("Female Condoms")
                    }.buttonStyle(BlueButton()).buttonBorderShape(.roundedRectangle).buttonStyle(.borderedProminent)
                }
                
                Spacer()
                
                if ans == "condoms"{
                    NavigationLink(destination: QuizQuestionTwoView().toolbar(.hidden).navigationViewStyle(.stack), label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80)
                            .foregroundColor(.blue)
                    })
                }
                
                if ans == "pill" || ans == "fcondom" {
                    Text("Wrong answer! Try again")
                        .titleStyle()
                        .foregroundColor(.red)
                }
                
            }
        }
    }
}

struct QuizQuestionOneView_Preview: PreviewProvider{
    static var previews: some View{
        QuizQuestionOneView()
    }
}
