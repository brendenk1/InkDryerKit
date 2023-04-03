import SwiftUI

public enum Pink: Int {
    case seven = 7, eight, nine, ten, eleven, twelve, thirteen
}

extension Pink: InkDryerColor {
    public static var baseColor: Pink   = .ten
    public static var hue: String       = "Pink"
    
    public var color: Color {
        switch self {
        case .seven:    return Color("07_#ff8daf", bundle: .module)
        case .eight:    return Color("08_#ff768f", bundle: .module)
        case .nine:     return Color("09_#ff6678", bundle: .module)
        case .ten:      return Color("10_#ff5862", bundle: .module)
        case .eleven:   return Color("11_#ff4567", bundle: .module)
        case .twelve:   return Color("12_#fe264d", bundle: .module)
        case .thirteen: return Color("13_#f5043e", bundle: .module)
        }
    }
}

struct Pink_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalate(color: Pink.self)
    }
}
