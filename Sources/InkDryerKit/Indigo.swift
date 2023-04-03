import SwiftUI

public enum Indigo: Int {
    case three = 3, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen
}

extension Indigo: InkDryerColor {
    public static var baseColor: Indigo = .ten
    public static var hue: String       = "Indigo"
    
    public var color: Color {
        switch self {
        case .three:    return Color("03_#e6e4f0", bundle: .module)
        case .four:     return Color("04_#d2cbf3", bundle: .module)
        case .five:     return Color("05_#bbb2e7", bundle: .module)
        case .six:      return Color("06_#a398da", bundle: .module)
        case .seven:    return Color("07_#9287ca", bundle: .module)
        case .eight:    return Color("08_#8075b4", bundle: .module)
        case .nine:     return Color("09_#6e659a", bundle: .module)
        case .ten:      return Color("10_#58517b", bundle: .module)
        case .eleven:   return Color("11_#443e5f", bundle: .module)
        case .twelve:   return Color("12_#302c43", bundle: .module)
        case .thirteen: return Color("13_#242133", bundle: .module)
        }
    }
}
