import Foundation
import SwiftUI
import ConfettiSwiftUI


struct ThankYouView: View{
    
    @State var isConfetti = 0
    
    var body: some View{
        ScrollView{
            VStack{
                Spacer()
                Image("blossom")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
                
                Text("Feminine Hygine and Sex Education is an extremely important aspect of the modern eduction, to make us more comfortable with our body, and understand the changes that go through the body")
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.system(size: 30, weight: .semibold))
                    .lineLimit(nil)
                    .padding()
                
                Spacer()
                
                Text("With Blossom, I wish to eradicate the taboo regarding periods, sex education especially in India & make people more comfortable with their identity and bodies!")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 26))
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                
                Spacer()
                
                Text("I implore you, to today take a pledge to spread this positive and much needed change in society")
                    .multilineTextAlignment(.center)
                    .font(.system(size: 28, weight: .semibold))
                    .padding()
                    .fixedSize(horizontal: false, vertical: true)
                
                
                Spacer()
                Text("\nThank you for taking your time today!\nMay you have a pleasuable day ahead ❤️")
                    .foregroundColor(.secondary)
                    .confettiCannon(counter: $isConfetti, confettis: [.text("💖"), .text("🌸"), .text("💫")], confettiSize: 10)
                
                Spacer()
                
            }
        }
        .onAppear{
            updateCounter()
        }
        
    }
    
    func updateCounter(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2){
            self.isConfetti = 100
        }
    }
    
}


struct ThankYouView_Preview: PreviewProvider{
    static var previews: some View{
        ThankYouView()
    }
}
