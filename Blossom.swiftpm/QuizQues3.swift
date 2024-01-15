import Foundation
import SwiftUI


struct QuizQuestionThreeView: View{
    
    @State private var ans: String = ""
    
    var body: some View{
        NavigationStack{
            VStack{
                
                Spacer()
                Text("If you have some questions regarding feminine hygine or menstrual cycle, whom should you consult?")
                    .titleStyle()
                
                
                Spacer()
                Image("quizq3")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
                Spacer()
                Spacer()
                
                VStack{
                    HStack{
                        Button{
                            ans = "gyno"
                        } label: {
                            Text("Gynecologist")
                        }.buttonStyle(BlueButton()).buttonBorderShape(.capsule).buttonStyle(.borderedProminent)
                        
                        Button{
                            ans = "fren"
                        } label: {
                            Text("Friends")
                        }.buttonStyle(BlueButton()).buttonBorderShape(.roundedRectangle).buttonStyle(.borderedProminent)
                    }
                    Button{
                        ans = "net"
                    } label: {
                        Text("Internet")
                    }.buttonStyle(BlueButton()).buttonBorderShape(.roundedRectangle).buttonStyle(.borderedProminent)
                    
                }
                
                Spacer()
                
                if ans == "gyno"{
                    NavigationLink(destination: ThankYouView().toolbar(.hidden).navigationViewStyle(.stack), label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80)
                            .foregroundColor(.blue)
                    })
                }
                
                if ans == "fren" || ans == "net"
                {
                    Text("Wrong answer! Try again")
                        .titleStyle()
                        .foregroundColor(.red)
                }
                
            }
        }
    }
}

struct QuizQuestionThreeView_Preview: PreviewProvider{
    static var previews: some View{
        QuizQuestionThreeView()
    }
}
