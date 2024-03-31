import SwiftUI

struct SchemePicker: View {
    
    @Binding var scheme: ColorScheme?
    
    var body: some View {
        VStack(spacing: 13) {
            Text("Выберите тему")
                .primary()
            
            Text("Выберите оформление приложения более подходящее вам по вкусу")
                .secondary()
            
            HStack {
                Selection(scheme: .light) {
                    Image(systemName: "sun.max")
                }
                
                Divider()
                
                Selection(scheme: nil) {
                    Text("Системная")
                }
                
                Divider()
                
                Selection(scheme: .dark) {
                    Image(systemName: "moon")
                }
            }
            .frame(maxWidth: .infinity, minHeight: 55, maxHeight: 65)
            .background(Color("color_bg_input"))
            .clipShape(RoundedRectangle(cornerRadius: 18))
            .overlay {
                RoundedRectangle(cornerRadius: 18)
                    .stroke(Color.gray, lineWidth: 1)
            }
        }
    }
    
    @ViewBuilder
    private func Selection(scheme: ColorScheme?, @ViewBuilder content:  () -> some View) -> some View {
        Button {
            withAnimation {
                self.scheme = scheme
            }
        } label: {
            content()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(self.scheme == scheme ? .raspberry : .clear)
                .frame (maxWidth: .infinity)
                .foregroundStyle(Color.white)
        }
    }
}


#Preview {
    SchemePicker(scheme: .constant(nil))
        .padding()
}

