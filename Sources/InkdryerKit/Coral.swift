import SwiftUI

public enum Coral: Int {
    case five = 5, six, seven, eight, nine, ten, eleven, twelve, thirteen
}

extension Coral: InkDryerColor {
    public static var baseColor: Coral  = .ten
    public static var hue: String       = "Coral"
    
    public var color: Color {
        switch self {
        case .five:     return Color("05_#ffe1d8", bundle: .module)
        case .six:      return Color("06_#fbc6be", bundle: .module)
        case .seven:    return Color("07_#faa3a9", bundle: .module)
        case .eight:    return Color("08_#fe6b6c", bundle: .module)
        case .nine:     return Color("09_#f5605e", bundle: .module)
        case .ten:      return Color("10_#e65855", bundle: .module)
        case .eleven:   return Color("11_#d3434c", bundle: .module)
        case .twelve:   return Color("12_#be313a", bundle: .module)
        case .thirteen: return Color("13_#a12d34", bundle: .module)
        }
    }
}

struct Coral_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalette(color: Coral.self)
    }
}
