import SwiftUI

struct IntroView: View{
    
    @State private var showPage: Bool = false // change to false in PROD!
    @State private var showLogo: Bool = false
    
    var body: some View{
        
        NavigationStack{
            ScrollView{
                if showLogo{
                    Spacer()
                    
                    Image("blossom")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 350)
                    
                    Spacer()
                    Text("Hi!")
                        .titleStyle()
                        .font(.system(.headline))
                    
                    
                    (
                        
                        Text("I am Khushi Mehta, a first year student from India")
                        
                        +
                        
                        Text("\n and I am here to help you learn about the ")
                        
                        +
                        
                        Text("\nchanges in your body")
                            .foregroundColor(.indigo)
                        
                        +
                        
                        Text("\nand learn how to deal with the same in an informative manner")
                            .foregroundColor(.pink)
                        
                    )
                    .multilineTextAlignment(.center)
                    .font(.system(size: 30))
                    .padding(.horizontal, 20)
                    .fixedSize(horizontal: false, vertical: true)
                    
                    Spacer()
                    
                    NavigationLink(destination: BMIInfo().toolbar(.hidden).navigationViewStyle(.stack), label: {
                        Image(systemName: "arrow.right.circle.fill")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80)
                            .foregroundColor(.blue)
                    })
                    
                }
                else{
                    Image("blossom")
                }
            }
            .navigationBarHidden(true)
            .navigationViewStyle(.stack)
            
        }
        .opacity(showPage ? 1 : 0)
        .onAppear{
            withAnimation(.easeInOut(duration: 1)) {
                self.showPage = true
                logoSlideIn()
            }
            
        }
    }
    
    
    func logoSlideIn(){
        withAnimation(.easeIn(duration: 2)){
            DispatchQueue.main.asyncAfter(deadline: .now() + 2){
                showLogo = true
            }
        }
    }
}

struct IntroView_Preview: PreviewProvider{
    static var previews: some View{
        IntroView()
    }
}
