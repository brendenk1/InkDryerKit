import SwiftUI

public enum Red: Int {
    case six = 6, seven, eight, nine, ten, eleven, twelve, thirteen
}

extension Red: InkDryerColor {
    public static var baseColor: Red    = .ten
    public static var hue: String       = "Red"
    
    public var color: Color {
        switch self {
        case .six:      return Color("06_#ff896f", bundle: .module)
        case .seven:    return Color("07_#ff785b", bundle: .module)
        case .eight:    return Color("08_#ff5449", bundle: .module)
        case .nine:     return Color("09_#f93c3c", bundle: .module)
        case .ten:      return Color("10_#f62b2b", bundle: .module)
        case .eleven:   return Color("11_#e82519", bundle: .module)
        case .twelve:   return Color("12_#d41508", bundle: .module)
        case .thirteen: return Color("13_#b60f0f", bundle: .module)
        }
    }
}

struct Red_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalette(color: Red.self)
    }
}
