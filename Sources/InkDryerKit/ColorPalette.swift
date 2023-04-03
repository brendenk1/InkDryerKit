import SwiftUI

struct ColorPalette<Color: InkDryerColor>: View {
    var values = 3...14
    
    let color: Color.Type
    
    var body: some View {
        Grid {
            ForEach(values, id: \.self) { value in
                Group {
                    if value == 10 { Divider() }
                    GridRow {
                        if value < 14 {
                            Text(value, format: .number.precision(.integerLength(2)))
                            Color.colorFor(value: value)
                        }
                        else {
                            Group {
                                Text("L")
                                Text(Color.hue)
                            }
                        }
                    }
                    
                    if value == 10 { Divider() }
                }
            }
        }
    }
}

struct ColorPalate_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Black_Previews.previews
            Blue_Previews.previews
            Brown_Previews.previews
            Coral_Previews.previews
            Gray_Previews.previews
            Green_Previews.previews
            Indigo_Previews.previews
            Orange_Previews.previews
            Pink_Previews.previews
            Purple_Previews.previews
        }
        Group {
            Red_Previews.previews
            Teal_Previews.previews
            White_Previews.previews
            Yellow_Previews.previews
        }
    }
}
