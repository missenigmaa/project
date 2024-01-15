//
//  BirthControl.swift
//  Blossom
//
//  Created by Dhurv Dugar on 19/04/23.
//

import Foundation
import SwiftUI

struct BirthControl: View{
    var body: some View{
        ScrollView{
            VStack{
                Text("What's the deal about Birth Control and Contraceptives?")
                    .font(.system(size: 45, weight: .semibold))
                    .foregroundColor(.indigo)
                    .titleStyle()
                
                
                Text("Birth control, also known as contraception, is the use of medicines, devices, or surgery to prevent pregnancy. There are many different types. Some are reversable, while others are permanent. Some types can also help prevent sexually transmitted diseases (STDs).")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                
                VStack{
                    
                    HStack{
                        GroupBox(label: Label("Male Condoms", systemImage: "heart")
                            .labelStyle(.titleOnly)){
                                HStack{
                                    
                                    Image("condom")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125)
                                        
                                            
                                        
                                    Text("In addition to preventing an unplanned pregnancy, condoms can also protect you against sexually transmitted diseases and infections. They are effective, protecting against pregnancy about 85% of the time if they’re worn before intercourse begins and don’t rip. They’re also easy to use, relatively affordable, and available everywhere")
                                            .multilineTextAlignment(.leading)
                                }
                            
                            }.padding(.all, 20)
                }
                    
                    HStack{
                        GroupBox(label: Label("Female Condoms", systemImage: "heart")
                                .labelStyle(.titleOnly)){
                                HStack{
                                        
                                    
                                            
                                        
                                    Text("Inserting a female condom — or an internal condom — should feel similar to inserting a tampon. Female condoms are designed with a flexible ring on each end. First you squeeze the inner ring. Then you slide it into the vagina as far as it will go.")
                                            .multilineTextAlignment(.trailing)
                                    
                                    Image("condomf")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125)
                                    
                                    }
                                
                            }.padding(.all, 20)
                    }
                    
                    HStack{
                        GroupBox(label: Label("Oral Contraceptives", systemImage: "heart")
                                .labelStyle(.titleOnly)){
                                HStack{
                                        
                                    
                                    Image("oral")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                        
                                    Text("Oral contraceptives, commonly known as birth control pills or just “the pill,” contain hormones—either a combination of a progestin and estrogen or a progestin alone.")
                                            .multilineTextAlignment(.leading)
                                    
                                    
                                    }
                                
                            }.padding(.all, 20)
                    }
                    
                    HStack{
                        GroupBox(label: Label("Copper IUD", systemImage: "heart")
                                .labelStyle(.titleOnly)){
                                HStack{
                                        
                                    
                                            
                                        
                                    Text("The most widely used reversible method of contraception, the copper intrauterine device (IUD) is a device that’s inserted into the uterus. It works by releasing copper particles into the uterus, causing it to become “a hostile environment for sperm.")
                                            .multilineTextAlignment(.trailing)
                                    
                                    Image("iud")
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

struct BirthControl_Preview: PreviewProvider{
    static var previews: some View{
        BirthControl()
    }
}
