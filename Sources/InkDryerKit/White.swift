import SwiftUI

public enum White: Int {
    case ten = 10, eleven, twelve, thirteen
}

extension White: InkDryerColor {
    public static var baseColor: White  = .ten
    public static var hue: String       = "White"
    
    public var color: Color {
        switch self {
        case .ten:      return Color("10_#ffffff", bundle: .module)
        case .eleven:   return Color("11_#fafafa", bundle: .module)
        case .twelve:   return Color("12_#f3f3f3", bundle: .module)
        case .thirteen: return Color("13_#f0f0f0", bundle: .module)
        }
    }
}

struct White_Previews: PreviewProvider {
    static var previews: some View {
        ColorPalette(color: White.self)
    }
}
