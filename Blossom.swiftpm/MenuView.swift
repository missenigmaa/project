//
//  MenuView.swift
//  Blossom
//
//  Created by Dhurv Dugar on 19/04/23.
//

import Foundation
import SwiftUI

struct MenuView: View{
    var body: some View{
        NavigationStack{
            ScrollView{
                VStack{
                    
                    // 1st
                    VStack{
                        Text("What can we help you with today?")
                            .titleStyle()
                        
                            .font(.system(size: 30))
                        
                        
                        Text("Choose any to learn more about the topic")
                            .font(.system(size: 16))
                            .font(.caption)
                            .foregroundColor(Color.gray)
                        
                    }
                    .padding(.top, 20)
                    
                    
                    
                    // 3rd
                    HStack{
                        Image("woman")
                        
                        
                        
                        VStack(alignment: .trailing){
                            
                            GroupBox{
                                NavigationLink(destination: PeriodRelief(), label: {
                                    Label("Period Relief Tips & Advice", systemImage: "heart")
                                })
                            }
                            .padding(.all, 20)
                            
                            GroupBox{
                                NavigationLink(destination: DecodeDischarge(), label: {
                                    Label("Decode my Discharge", systemImage: "drop")
                                })
                            }
                            .padding(.all, 20)
                            
                            GroupBox{
                                NavigationLink(destination: PeriodLate(), label: {
                                    Label("Why your period might be late", systemImage: "clock.badge")
                                    
                                })
                            }
                            .padding(.all, 20)
                            
                            GroupBox{
                                NavigationLink(destination: BirthControl(), label: {
                                    Label("Learn about birth control", systemImage: "medical.thermometer")
                                })
                            }
                            .padding(.all, 20)
                            
                            //                        Spacer()
                            
                        }
                        
                    }
                    
                    
                    Spacer()
                    
                    
                    Spacer()
                    
                    NavigationLink(destination: QuizQuestionOneView().toolbar(.hidden).navigationViewStyle(.stack), label: {
                        
                        HStack{
                            Image(systemName: "compass.drawing")
                                .resizable()
                                .renderingMode(.original)
                                .foregroundColor(.mint)
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 60)
                            
                            Text("Short quiz to fortify what we've \nlearned today")
                                .multilineTextAlignment(.leading)
                                .foregroundColor(.indigo)
                                .font(.system(size: 22))
                            
                        }
                    }
                                   
                    )
                    
                    
                    
                }
                
            }
            .navigationBarHidden(true)
            .navigationViewStyle(.stack)
        }
    }
}


struct MenuView_Preview: PreviewProvider{
    static var previews: some View{
        MenuView()
    }
}
