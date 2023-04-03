import SwiftUI

public protocol InkDryerColor: CaseIterable, RawRepresentable
where RawValue == Int
{
    var color: Color            { get }
    static var baseColor: Self  { get }
}

public extension InkDryerColor {
    static func colorFor(value: Int) -> Color? {
        Self(rawValue: value)?.color
    }
}
