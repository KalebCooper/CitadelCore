//
//  Task+Sleep.swift
//  CitadelCore
//
//  Created by Kaleb Cooper on 6/12/22.
//

import Foundation

extension Task where Success == Never, Failure == Never {
    static func sleep(_ interval: DispatchTimeInterval) async {
        // Default to 0.0 is safe
        let seconds: Double = interval.toDouble() ?? 0.0
        let duration = UInt64(seconds * 1_000_000_000)
        try? await Task.sleep(nanoseconds: duration)
    }
}

extension DispatchTimeInterval {
    func toDouble() -> Double? {
        var result: Double? = 0

        switch self {
        case .seconds(let value):
            result = Double(value)
        case .milliseconds(let value):
            result = Double(value)*0.001
        case .microseconds(let value):
            result = Double(value)*0.000001
        case .nanoseconds(let value):
            result = Double(value)*0.000000001
        case .never:
            result = nil
        @unknown default:
            result = nil
        }

        return result
    }
}
