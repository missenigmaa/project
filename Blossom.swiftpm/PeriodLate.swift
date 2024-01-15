//
//  PeriodLate.swift
//  Blossom
//
//  Created by Dhurv Dugar on 19/04/23.
//

import Foundation
import SwiftUI

struct PeriodLate: View{
    var body: some View{
        ScrollView{
            VStack{
                Text("Why your periods might be late?")
                    .font(.system(size: 45, weight: .semibold))
                    .foregroundColor(.indigo)
                    .titleStyle()
                
                
                Text("Most people who haven’t reached menopause usually have a period approximately every 28 days. However, a healthy menstrual cycle can range from every 21 to 40 days. If your period doesn’t fall within these ranges, it could be because of one of the following reasons.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                
                VStack{
                    
                    HStack{
                        GroupBox(label: Label("Stress", systemImage: "heart")
                            .labelStyle(.titleOnly)){
                                HStack{
                                    
                                    Image("stress")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125)
                                    
                                    
                                    
                                    Text("Chronic stress can throw off your hormones, change your daily routine, and even affect the part of your brain responsible for regulating your period: your hypothalamus.")
                                        .multilineTextAlignment(.leading)
                                }
                                
                            }.padding(.all, 20)
                    }
                    
                    HStack{
                        GroupBox(label: Label("Weight Loss", systemImage: "heart")
                            .labelStyle(.titleOnly)){
                                HStack{
                                    
                                    
                                    
                                    
                                    Text("Significant weight loss or intense exercise can cause a woman to miss her period. Being underweight or having a low body-fat ratio can alter reproductive hormone levels, lowering them to levels where ovulation and menstruation do not occur.")
                                        .multilineTextAlignment(.trailing)
                                    
                                    Image("weight")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125)
                                    
                                }
                                
                            }.padding(.all, 20)
                    }
                    
                    HStack{
                        GroupBox(label: Label("Hormonal conditions", systemImage: "heart")
                            .labelStyle(.titleOnly)){
                                HStack{
                                    
                                    
                                    Image("hormone")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                    
                                    Text("Some hormones, such as prolactin or thyroid hormones, can cause a woman to miss her period. If a hormonal imbalance is responsible for a missed or late period, it can easily be detected with a blood test.")
                                        .multilineTextAlignment(.leading)
                                    
                                    
                                }
                                
                            }.padding(.all, 20)
                    }
                    
                    HStack{
                        GroupBox(label: Label("Pregancy", systemImage: "heart")
                            .labelStyle(.titleOnly)){
                                HStack{
                                    
                                    
                                    
                                    
                                    Text("Women should not rule out pregnancy as a possible reason that their period is late, even if they are using contraception. Women can still get pregnant even if they use birth control correctly.")
                                        .multilineTextAlignment(.trailing)
                                    
                                    Image("preg")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125)
                                    
                                }
                                
                            }.padding(.all, 20)
                    }
                    
                    
                    
                    
                    
                    
                }
                
                Spacer()
            }
            
        }
    }
}


struct PeriodLate_Previews: PreviewProvider{
    static var previews: some View{
        PeriodLate()
    }
}
