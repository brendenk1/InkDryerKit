import SwiftUI

public enum Yellow: Int {
    case five = 5, six, seven, eight, nine, ten, eleven, twelve, thirteen
}

extension Yellow: InkDryerColor {
    public static var baseColor: Yellow = .ten
    public static var hue: String       = "Yellow"
    
    public var color: Color {
        switch self {
        case .five:     return Color("05_#fffded", bundle: .module)
        case .six:      return Color("06_#fffbd9", bundle: .module)
        case .seven:    return Color("07_#fff7b2", bundle: .module)
        case .eight:    return Color("08_#ffed8d", bundle: .module)
        case .nine:     return Color("09_#ffe351", bundle: .module)
        case .ten:      return Color("10_#ffc736", bundle: .module)
        case .eleven:   return Color("11_#fc9700", bundle: .module)
        case .twelve:   return Color("12_#fc9700", bundle: .module)
        case .thirteen: return Color("13_#fa8802", bundle: .module)
        }
    }
}

struct Yellow_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalette(color: Yellow.self)
    }
}
