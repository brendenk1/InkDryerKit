import SwiftUI

public enum Green: Int {
    case four = 4, five, six, seven, eight, nine, ten, eleven, twelve, thirteen
}

extension Green: InkDryerColor {
    public static var baseColor: Green  = .ten
    public static var hue: String       = "Green"
    
    public var color: Color {
        switch self {
        case .four:     return Color("04_#f3f9ee", bundle: .module)
        case .five:     return Color("05_#e4f4da", bundle: .module)
        case .six:      return Color("06_#c9efb2", bundle: .module)
        case .seven:    return Color("07_#9ae78d", bundle: .module)
        case .eight:    return Color("08_#41c75f", bundle: .module)
        case .nine:     return Color("09_#1fb240", bundle: .module)
        case .ten:      return Color("10_#009a47", bundle: .module)
        case .eleven:   return Color("11_#017544", bundle: .module)
        case .twelve:   return Color("12_#006339", bundle: .module)
        case .thirteen: return Color("13_#004629", bundle: .module)
        }
    }
}

struct Green_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalette(color: Green.self)
    }
}
