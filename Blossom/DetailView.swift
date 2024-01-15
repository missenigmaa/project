//
//  DetailView.swift
//  Blossom
//
//  Created by Dhurv Dugar on 19/04/23.
//

import Foundation
import SwiftUI

struct DetailView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var bmi: BMICalculator
    @State var isHeightMetric = true
    @State var isWeightMetric = true
    
    var body: some View {
        
        NavigationStack{
            GeometryReader { geo in
                
                ZStack {
                    
                    
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Spacer()
                            Button(action: {
                                presentationMode.wrappedValue.dismiss()
                            }) {
                                Image(systemName: "x.circle.fill")
                                    .font(.largeTitle)
                                    .foregroundColor(.secondary)
                                    .opacity(0.5)
                            }
                        }
                        Spacer()
                        
                        // MARK: Heading
                        VStack(alignment: .leading) {
                            
                            Text("Your BMI Table")
                                .font(.largeTitle)
                                .fontWeight(.heavy)
                            
                            HStack {
                                
                                Spacer()
                                
                                // MARK: BMI Column
                                VStack {
                                    Image(systemName: "figure.stand")
                                        .font(.title3)
                                        .padding(.vertical, 10)
                                        .opacity(0.5)
                                    Text("BMI")
                                        .font(.headline)
                                    Text("\(bmi.getBMIValue())")
                                        .font(.title3)
                                        .foregroundColor(Color(getColor()))
                                }
                                
                                Spacer()
                                
                                // MARK: Height Column
                                VStack {
                                    Image(systemName: "arrow.up.and.down")
                                        .font(.title3)
                                        .padding(.vertical, 10)
                                        .opacity(0.5)
                                    Text("HEIGHT")
                                        .font(.headline)
                                    Text("\(getHeight(cm: bmi.height, isMetric: isHeightMetric))")
                                        .font(.title3)
                                }
                                .onTapGesture { isHeightMetric.toggle() }
                                
                                Spacer()
                                
                                // MARK: Weight Column
                                VStack {
                                    Image(systemName: "scalemass")
                                        .font(.title3)
                                        .padding(.vertical, 10)
                                        .opacity(0.5)
                                    Text("WEIGHT")
                                        .font(.headline)
                                    Text("\(getWeight(kg: bmi.weight, isMetric: isWeightMetric, indicator: true))")
                                        .font(.title3)
                                }
                                .onTapGesture { isWeightMetric.toggle() }
                                
                                Spacer()
                            }.padding(.vertical)
                        }
                        
                        Spacer()
                                        
                        // MARK: Table
                        Group {
                            
                            // Underweight
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Underweight")
                                        .font(.headline)
                                    Text("BMI ﹤ 18.5")
                                        .font(.subheadline)
                                }
                                Spacer()
                                Text("﹤ \(getWeight(kg: bmi.reverseBMI(targetBMI: 18.5), isMetric: isWeightMetric, indicator: true))")
                                    .font(.title2)
                            }
                            .foregroundColor(Color(UIColor.systemBlue))
                            .padding(.bottom)
                            
                            // Healthy
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Healthy")
                                        .font(.headline)
                                    Text("BMI 18.5 to 25")
                                        .font(.subheadline)
                                }
                                Spacer()
                                Text("\(getWeight(kg: bmi.reverseBMI(targetBMI: 18.5), isMetric: isWeightMetric, indicator: false)) to \(getWeight(kg: bmi.reverseBMI(targetBMI: 25), isMetric: isWeightMetric, indicator: true))")
                                    .font(.title2)
                            }
                            .foregroundColor(Color(UIColor.systemGreen))
                            .padding(.bottom)
                            
                            // Overweight
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Overweight")
                                        .font(.headline)
                                    Text("BMI 25 to 30")
                                        .font(.subheadline)
                                }
                                Spacer()
                                Text("\(getWeight(kg: bmi.reverseBMI(targetBMI: 25), isMetric: isWeightMetric, indicator: false)) to \(getWeight(kg: bmi.reverseBMI(targetBMI: 30), isMetric: isWeightMetric, indicator: true))")
                                    .font(.title2)
                            }
                            .foregroundColor(Color(UIColor.systemOrange))
                            .padding(.bottom)
                            
                            // Obese
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Obese")
                                        .font(.headline)
                                    Text("BMI 30 to 40")
                                        .font(.subheadline)
                                }
                                Spacer()
                                Text("\(getWeight(kg: bmi.reverseBMI(targetBMI: 30), isMetric: isWeightMetric, indicator: false)) to \(getWeight(kg: bmi.reverseBMI(targetBMI: 40), isMetric: isWeightMetric, indicator: true))")
                                    .font(.title2)
                            }
                            .foregroundColor(Color(UIColor.systemRed))
                            .padding(.bottom)
                            
                            // Extremely Obese
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("Extremely Obese")
                                        .font(.headline)
                                    Text("BMI ﹥ 40")
                                        .font(.subheadline)
                                }
                                Spacer()
                                Text("﹥ \(getWeight(kg: bmi.reverseBMI(targetBMI: 40), isMetric: isWeightMetric, indicator: true))")
                                    .font(.title2)
                            }
                            .foregroundColor(Color(.gray))
                            .padding(.bottom)
                        }.onTapGesture { isWeightMetric.toggle() }
                        
                        Spacer()
                        
                        
                        
                        
                        
                        
                    }.padding(.all, 30)
                    
                    
                }
                
            }
            
        }
    }
    
    // Prevent black-on-black text based on BMI classification
    func getColor() -> UIColor {
        var color = bmi.getColor()
        if color == .black { color = .white }
        return color
    }
}

// MARK: Previews
struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(bmi: BMICalculator(height: 120.0, weight: 150.0))
            .previewDevice("iPhone 12")
    }
}
