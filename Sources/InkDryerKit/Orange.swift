import SwiftUI

public enum Orange: Int {
    case five = 5, six, seven, eight, nine, ten, eleven, twelve, thirteen
}

extension Orange: InkDryerColor {
    public static var baseColor: Orange = .ten
    public static var hue: String       = "Orange"
    
    public var color: Color {
        switch self {
        case .five:     return Color("05_#fef3eb", bundle: .module)
        case .six:      return Color("06_#ffd8bc", bundle: .module)
        case .seven:    return Color("07_#ffc093", bundle: .module)
        case .eight:    return Color("08_#ff9c55", bundle: .module)
        case .nine:     return Color("09_#ff7b32", bundle: .module)
        case .ten:      return Color("10_#ff6916", bundle: .module)
        case .eleven:   return Color("11_#f85900", bundle: .module)
        case .twelve:   return Color("12_#e15100", bundle: .module)
        case .thirteen: return Color("13_#d34c00", bundle: .module)
        }
    }
}
