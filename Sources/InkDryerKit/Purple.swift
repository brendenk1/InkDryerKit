import SwiftUI

public enum Purple: Int {
    case three = 3, four, five, six, seven, eight, nine, ten, eleven, twelve
}

extension Purple: InkDryerColor {
    public static var baseColor: Purple = .ten
    public static var hue: String       = "Purple"
    
    public var color: Color {
        switch self {
        case .three:    return Color("03_#e3ddf9", bundle: .module)
        case .four:     return Color("04_#e3ddf9", bundle: .module)
        case .five:     return Color("05_#baa9ff", bundle: .module)
        case .six:      return Color("06_#a38dff", bundle: .module)
        case .seven:    return Color("07_#8667f1", bundle: .module)
        case .eight:    return Color("08_#724ffc", bundle: .module)
        case .nine:     return Color("09_#613eeb", bundle: .module)
        case .ten:      return Color("10_#5132cb", bundle: .module)
        case .eleven:   return Color("11_#4c1cb5", bundle: .module)
        case .twelve:   return Color("12_#3e1a8a", bundle: .module)
        }
    }
}

struct Purple_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalette(color: Purple.self)
    }
}
