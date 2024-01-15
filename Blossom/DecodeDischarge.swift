//
//  DecodeDischarge.swift
//  Blossom
//
//  Created by Dhurv Dugar on 19/04/23.
//

import Foundation
import SwiftUI

struct DecodeDischarge: View{
    var body: some View{
        ScrollView{
            VStack{
                Text("Decode your Discharge")
                    .font(.system(size: 45, weight: .semibold))
                    .foregroundColor(.indigo)
                    .titleStyle()
                
                
                Text("Vaginal discharge is as natural as saliva. But why does the body create it in the first place? The mucous membrane of the vagina and glands on the cervix produce the fluid to maintain the health of the reproductive organs.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                
                
                VStack{
                    
                    HStack{
                        GroupBox(label: Label("White", systemImage: "heart")
                            .labelStyle(.titleOnly)){
                                HStack{
                                    
                                    Image("white")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125)
                                        
                                            
                                        
                                    Text("White-colored discharge is common, especially at the beginning or end of your menstrual cycle. Typically, this discharge will be thick and sticky, too, with no strong odor.")
                                            .multilineTextAlignment(.leading)
                                }
                            
                            }.padding(.all, 20)
                }
                    
                    HStack{
                        GroupBox(label: Label("Clear and Watery", systemImage: "heart")
                                .labelStyle(.titleOnly)){
                                HStack{
                                        
                                    
                                            
                                        
                                    Text("Around ovulation, discharge often becomes clearer and wetter. You may also notice more discharge like this when you’re sexually aroused or pregnant.")
                                            .multilineTextAlignment(.trailing)
                                    
                                    Image("transparent")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125)
                                    
                                    }
                                
                            }.padding(.all, 20)
                    }
                    
                    HStack{
                        GroupBox(label: Label("White stretchy", systemImage: "heart")
                                .labelStyle(.titleOnly)){
                                HStack{
                                        
                                    
                                    Image("clumpy")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                        
                                    Text("When discharge is whitish/clear but stretchy and mucous-like, rather than watery, it indicates that you are likely ovulating.")
                                            .multilineTextAlignment(.leading)
                                    
                                    
                                    }
                                
                            }.padding(.all, 20)
                    }
                    
                    HStack{
                        GroupBox(label: Label("Brown or Red", systemImage: "heart")
                                .labelStyle(.titleOnly)){
                                HStack{
                                        
                                    
                                            
                                        
                                    Text("Brown or bloody discharge can occur during or right after your menstrual cycle. You may also experience a small amount of bloody discharge between periods. This is called spotting.")
                                            .multilineTextAlignment(.trailing)
                                    
                                    Image("brown")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 125)
                                    
                                    }
                                
                            }.padding(.all, 20)
                    }
                    
                    HStack{
                        GroupBox(label: Label("Yellow or Green", systemImage: "heart")
                                .labelStyle(.titleOnly)){
                                HStack{
                                        
                                    
                                    Image("yellow")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 150)
                                        
                                    Text("Yellow-ish discharge may not indicate a health condition as it can naturally turn this color when exposed to air. But darker yellow or green discharge — especially when it’s thick, chunky, or accompanied by an unpleasant smell — is a sign to see a healthcare professional.")
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

struct DecodeDischarge_Preview: PreviewProvider{
    static var previews: some View{
        DecodeDischarge()
    }
}
