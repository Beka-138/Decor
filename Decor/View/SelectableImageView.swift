import SwiftUI

struct SelectableImageView: View {     
    
    var data: [ImageBG]
    @Binding var selection: ImageBG
    
    var adaptiveColumns = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        
        VStack(spacing: 13){
            
            Text("Заставка экрана загрузки")
                .primary()
            
            Text("Выберите изображение, которое будет встречать вас при входе")
                .secondary()
            
            LazyVGrid(columns: adaptiveColumns, spacing: 10) {
                ForEach(data) { image in
                    Image(image.name)
                }
            }
        }
    }
}


#Preview {
    let data: [ImageBG] = .preview
    
    return SelectableImageView(data: data, selection: .constant(data.first!))
        .padding()
}

