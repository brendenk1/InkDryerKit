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
                            Orange.colorFor(value: value)
                            Brown.colorFor(value: value)
                            Green.colorFor(value: value)
                            Blue.colorFor(value: value)
                            Indigo.colorFor(value: value)
                            Black.colorFor(value: value)
                            Gray.colorFor(value: value)
                        }
                        else {
                            Group {
                                Text("L")
                                Text(Coral.hue)
                                Text(Orange.hue)
                                Text(Brown.hue)
                                Text(Green.hue)
                                Text(Blue.hue)
                                Text(Indigo.hue)
                                Text(Black.hue)
                                Text(Gray.hue)
                            }
                            .lineLimit(1)
                            .minimumScaleFactor(0.1)
                            .allowsTightening(true)
                            
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
            .padding()
    }
}
