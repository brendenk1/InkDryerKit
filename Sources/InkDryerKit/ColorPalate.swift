import SwiftUI

struct ColorPalate: View {
    var values = 3...14
    
    var body: some View {
        Grid {
            ForEach(values, id: \.self) { value in
                if value == 10 { Divider() }
                GridRow {
                    if value < 14 {
                        Text(value, format: .number.precision(.integerLength(2)))
                        
                        if let blue = Blue.colorFor(value: value) {
                            blue
                        }
                        
                        if let black = Black.colorFor(value: value) {
                            black
                        }
                    }
                    else {
                        Text("L")
                        Text(Blue.hue)
                        Text(Black.hue)
                    }
                }
                
                if value == 10 { Divider() }
            }
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalate()
    }
}
