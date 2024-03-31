import SwiftUI

struct ContentView: View {
    @State var scheme: ColorScheme? = nil
    
    let data: [ImageBG] = .preview
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 30) {
                    UserNameView()
                    
                    SchemePicker(scheme: $scheme)
                    
                    SelectableImageView(data: data, selection: .constant(data.first!))
                }
                .padding()
                .preferredColorScheme(scheme)
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Оформление")
                            .font(.title2)
                            .fontWeight(.semibold)
                    }

                    ToolbarItem(placement: .topBarLeading) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(Color("raspberry"))
                            .bold()
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
