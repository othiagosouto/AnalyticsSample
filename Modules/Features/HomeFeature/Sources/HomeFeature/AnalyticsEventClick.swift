//
//  File.swift
//
//
//  Created by Thiago Santos on 25.08.24.
//

import Foundation
import AnalyticsSupport

struct AnalyticsEventClick: AnalyticsEvent {

    func provide(params: any AnalyticsEventKey) -> AnalytictEventData {
        let eventKey = params as! AnalyticsEvenClickKey

        return AnalytictEventData(content: "Event name \(AnalyticsEvenClickKey.eventName), data: \(eventKey.parameter)")
    }
}

public struct AnalyticsEvenClickKey: AnalyticsEventKey {
    public static var eventName: String = "AnalyticsEventClick"
    public static var resourceLink: String = "http://www.google.com/AnalyticsEventClick"

    let parameter: String

    public init(parameter: String) {
        self.parameter = parameter
    }
}
