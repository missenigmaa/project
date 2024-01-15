import Foundation
import SwiftUI


struct QuizQuestionTwoView: View{
    
    @State private var ans: String = ""
    
    var body: some View{
        NavigationStack{
            VStack{
                
                Spacer()
                Text("You should change your pad every 5-6 hours?")
                    .titleStyle()
                
                
                Spacer()
                Image(systemName: "brain.head.profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80)
                Spacer()
                Spacer()
                
                VStack{
                    HStack{
                        Button{
                            ans = "false"
                        } label: {
                            Text("Myth")
                        }.buttonStyle(BlueButton()).buttonBorderShape(.capsule).buttonStyle(.borderedProminent)
                        
                        Button{
                            ans = "true"
                        } label: {
                            Text("Fact")
                        }.buttonStyle(BlueButton()).buttonBorderShape(.roundedRectangle).buttonStyle(.borderedProminent)
                    }
                    
                }
                
                Spacer()
                
                if ans == "true"{
                    NavigationLink(destination: QuizQuestionThreeView().toolbar(.hidden).navigationViewStyle(.stack), label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80)
                            .foregroundColor(.blue)
                    })
                }
                
                if ans == "false"
                {
                    Text("Wrong answer! Try again")
                        .titleStyle()
                        .foregroundColor(.red)
                }
                
            }
        }
    }
}

struct QuizQuestionTwoView_Preview: PreviewProvider{
    static var previews: some View{
        QuizQuestionTwoView()
    }
}
