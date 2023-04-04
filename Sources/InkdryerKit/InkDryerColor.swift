import SwiftUI

public protocol InkDryerColor: CaseIterable, RawRepresentable
where RawValue == Int
{
    static var baseColor: Self  { get }
    var color: Color            { get }
    static var hue: String      { get }
}

public extension InkDryerColor {
    static func colorFor(value: Int) -> Color {
        Self(rawValue: value)?.color ?? .clear
    }
}
