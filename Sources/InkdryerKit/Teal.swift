import SwiftUI

public enum Teal: Int {
    case four = 4, five, six, seven, eight, nine, ten, eleven, twelve, thirteen
}

extension Teal: InkDryerColor {
    public static var baseColor: Teal   = .ten
    public static var hue: String       = "Teal"
    
    public var color: Color {
        switch self {
        case .four:     return Color("04_#f2f9f9", bundle: .module)
        case .five:     return Color("05_#e5f8f7", bundle: .module)
        case .six:      return Color("06_#cff4eb", bundle: .module)
        case .seven:    return Color("07_#a7e8e4", bundle: .module)
        case .eight:    return Color("08_#4cd2da", bundle: .module)
        case .nine:     return Color("09_#00c1cd", bundle: .module)
        case .ten:      return Color("10_#00a4c8", bundle: .module)
        case .eleven:   return Color("11_#0193a7", bundle: .module)
        case .twelve:   return Color("12_#007994", bundle: .module)
        case .thirteen: return Color("13_#00647a", bundle: .module)
        }
    }
}

struct Teal_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalette(color: Teal.self)
    }
}
