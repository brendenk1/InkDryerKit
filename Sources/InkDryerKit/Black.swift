import SwiftUI

enum Black {
    case eight, nine, ten, eleven
}

extension Black {
    var color: Color {
        switch self {
        case .eight:    return Color("08_#484848", bundle: .module)
        case .nine:     return Color("09_#323030", bundle: .module)
        case .ten:      return Color("10_#222222", bundle: .module)
        case .eleven:   return Color("11_#000000", bundle: .module)
        }
    }
}
