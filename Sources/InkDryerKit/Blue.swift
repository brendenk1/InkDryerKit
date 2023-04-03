import SwiftUI

public enum Blue: Int {
    case three = 3, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen
}

extension Blue: InkDryerColor {
    public static var baseColor: Blue = .ten
    
    public var color: Color {
        switch self {
        case .three:    return Color("03_#e8f5ff", bundle: .module)
        case .four:     return Color("04_#d4eaff", bundle: .module)
        case .five:     return Color("05_#acd7ff", bundle: .module)
        case .six:      return Color("06_#86b7ff", bundle: .module)
        case .seven:    return Color("07_#5e9eff", bundle: .module)
        case .eight:    return Color("08_#4b88ff", bundle: .module)
        case .nine:     return Color("09_#2a72ff", bundle: .module)
        case .ten:      return Color("10_#1755cb", bundle: .module)
        case .eleven:   return Color("11_#0946b7", bundle: .module)
        case .twelve:   return Color("12_#223a90", bundle: .module)
        case .thirteen: return Color("13_#12266e", bundle: .module)
        }
    }
}
