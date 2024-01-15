//
//  PeriodRelief.swift
//  Blossom
//
//  Created by Dhurv Dugar on 19/04/23.
//

import Foundation
import SwiftUI

struct PeriodRelief: View{
    var body: some View{
        ScrollView{
            VStack{
                Spacer()
                
                Text("Here are some tips that can help you relieve pain during your cycle")
                    .font(.system(size: 45, weight: .semibold))
                    .foregroundColor(.indigo)
                    .titleStyle()
                
                Spacer()
                
                VStack{
                    
                    HStack{
                        GroupBox(label: Label("Follow a diet rich in fibres and essential fats", systemImage: "heart")
                            .labelStyle(.titleOnly)){
                                HStack{
                                    
                                    Image("bro")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125)
                                        
                                            
                                        
                                    Text("During menstruation, it is advisable to maintain a healthy and balanced diet. Some of the prescribed foods for consumption include broccoli, leafy green vegetables, soy, sesame seeds, almonds, walnuts, avocado, pumpkin and flaxseeds.")
                                            .multilineTextAlignment(.leading)
                                }
                            
                            }.padding(.all, 20)
                }
                    
                    HStack{
                        GroupBox(label: Label("WATER, WATER AND WATER", systemImage: "heart")
                                .labelStyle(.titleOnly)){
                                HStack{
                                        
                                    
                                            
                                        
                                    Text("Drinking enough water during your period can help to prevent the body from getting dehydrated. Lack of enough water in the body system can dispose women to physical and mental stress and improper functioning.")
                                            .multilineTextAlignment(.trailing)
                                    
                                    Image("water")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125)
                                    
                                    }
                                
                            }.padding(.all, 20)
                    }
                    
                    HStack{
                        GroupBox(label: Label("HOT BATH OR SHOWER", systemImage: "heart")
                                .labelStyle(.titleOnly)){
                                HStack{
                                        
                                    
                                    Image("bath")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                        
                                    Text("Taking a hot bath or shower for quite a long time can help to ease pain. Other heat source like the use of heat pad, warm water bottle, can also help to give cramp relief.")
                                            .multilineTextAlignment(.leading)
                                    
                                    
                                    }
                                
                            }.padding(.all, 20)
                    }
                    
                    
                    
                    
                    
                }
                
                Spacer()
                
            }
        }
    }
}

struct PeriodRelief_Preview: PreviewProvider{
    static var previews: some View{
        PeriodRelief()
    }
}
