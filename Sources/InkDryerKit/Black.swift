import SwiftUI

public enum Black: Int {
    case eight = 8, nine, ten, eleven
}

extension Black: InkDryerColor {
    public static var baseColor: Black = .ten
    
    public var color: Color {
        switch self {
        case .eight:    return Color("08_#484848", bundle: .module)
        case .nine:     return Color("09_#323030", bundle: .module)
        case .ten:      return Color("10_#222222", bundle: .module)
        case .eleven:   return Color("11_#000000", bundle: .module)
        }
    }
}
