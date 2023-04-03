import SwiftUI

struct ColorPalate: View {
    var values = 3...13
    
    var body: some View {
        Grid {
            ForEach(values, id: \.self) { value in
                GridRow {
                    Text(value, format: .number.precision(.integerLength(2)))
                    
                    if let blue = Blue.colorFor(value: value) {
                        blue
                    }
                    
                    if let black = Black.colorFor(value: value) {
                        black
                    }
                }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalate()
    }
}
