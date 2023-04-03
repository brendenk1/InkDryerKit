import SwiftUI

public enum Gray: Int {
    case seven = 7, eight, nine, ten, eleven, twelve, thirteen
}

extension Gray: InkDryerColor {
    public static var baseColor: Gray   = .ten
    public static var hue: String       = "Gray"
    
    public var color: Color {
        switch self {
        case .seven:    return Color("07_#eaeaea", bundle: .module)
        case .eight:    return Color("08_#dddddd", bundle: .module)
        case .nine:     return Color("09_#c9c9c9", bundle: .module)
        case .ten:      return Color("10_#9d9d9d", bundle: .module)
        case .eleven:   return Color("11_#888888", bundle: .module)
        case .twelve:   return Color("12_#6d6d6d", bundle: .module)
        case .thirteen: return Color("13_#636060", bundle: .module)
        }
    }
}
