import SwiftUI
import Foundation

struct DarkGroupBoxStyle: GroupBoxStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        
        VStack(alignment: .leading, spacing: 8) {
            configuration.label
                .foregroundColor(Color.indigo)
                .padding(.top, 8)
                .padding(.leading, 8)
            configuration.content
                .padding(8)
        }
        .background(Color.secondary)
        .cornerRadius(8)
    }
    
}
