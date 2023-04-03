import SwiftUI

public enum Brown: Int {
case four = 4, five, six, seven, eight, nine, ten, eleven, twelve, thirteen
}

extension Brown: InkDryerColor {
    static public var baseColor: Brown  = .ten
    static public var hue: String       = "Brown"
    
    public var color: Color {
        switch self {
        case .four:     return Color("04_#fefaf2", bundle: .module)
        case .five:     return Color("05_#fff0d9", bundle: .module)
        case .six:      return Color("06_#f5e3c6", bundle: .module)
        case .seven:    return Color("07_#efd8b6", bundle: .module)
        case .eight:    return Color("08_#ffb26c", bundle: .module)
        case .nine:     return Color("09_#ed9453", bundle: .module)
        case .ten:      return Color("10_#b77748", bundle: .module)
        case .eleven:   return Color("11_#a85c25", bundle: .module)
        case .twelve:   return Color("12_#824316", bundle: .module)
        case .thirteen: return Color("13_#65320d", bundle: .module)
        }
    }
}
