import Foundation
import SwiftUI


struct BMIInfo: View{
    
    @State private var weight: Double?
    @State private var height: Double?
    @State private var isBMICaclulated: Bool = false
    var bmi: Double?
    
    
    var body: some View{
        NavigationStack{
            VStack{
                VStack{
                    Text("Help us know you better")
                        .titleStyle()
                        .padding(.top, 20)
                    
                    
                    Text("Body Mass Index Checkpoint!")
                        .titleStyle()
                        .padding(.top, 20)
                        .font(.system(.body, weight: .semibold))
                        .foregroundColor(.pink)
                    
                    
                    Image("bmi")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 650, alignment: .center)
                    
                    Text("Maintaining a safe BMI (Body Mass Index) is important for overall health and well-being. BMI is a measure of body fat based on an individual's height and weight.")
                        .multilineTextAlignment(.center)
                        .font(.system(size: 30))
                        .padding(.horizontal, 20)
                        .padding(.bottom, 30)
                        .fixedSize(horizontal: false, vertical: true)
                }
                
                
                NavigationLink(destination: BMIView().toolbar(.hidden).navigationViewStyle(.stack), label: {
                    Image(systemName: "arrow.right.circle.fill")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80)
                        .foregroundColor(.blue)
                })
                
                
                
            }
        }
        .navigationBarHidden(true)
        .navigationViewStyle(.stack)
        
    }
}


struct BMICalculator_Previews: PreviewProvider {
    static var previews: some View {
        BMIInfo()
    }
}
