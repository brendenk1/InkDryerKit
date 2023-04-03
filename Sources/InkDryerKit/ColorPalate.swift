import SwiftUI

struct ColorPalate: View {
    var values = 3...14
    
    var body: some View {
        Grid {
            ForEach(values, id: \.self) { value in
                Group {
                    if value == 10 { Divider() }
                    GridRow {
                        if value < 14 {
                            Text(value, format: .number.precision(.integerLength(2)))
                            Coral.colorFor(value: value)
                            Brown.colorFor(value: value)
                            Green.colorFor(value: value)
                            Blue.colorFor(value: value)
                            Black.colorFor(value: value)
                            Gray.colorFor(value: value)
                        }
                        else {
                            Text("L")
                            Text(Coral.hue)
                            Text(Brown.hue)
                            Text(Green.hue)
                            Text(Blue.hue)
                            Text(Black.hue)
                            Text(Gray.hue)
                        }
                    }
                    
                    if value == 10 { Divider() }
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
