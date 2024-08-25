//
//  File.swift
//
//
//  Created by Thiago Santos on 25.08.24.
//

import Foundation
import AnalyticsSupport

struct AnalyticsEventClick2: AnalyticsEvent {

    func provide(params: any AnalyticsEventKey) -> AnalytictEventData {
        let eventKey = params as! AnalyticsEvenClickKey2

        return AnalytictEventData(content: "Event name \(AnalyticsEvenClickKey2.eventName), data: \(eventKey.parameter)")
    }
}

public struct AnalyticsEvenClickKey2: AnalyticsEventKey {
    public static var eventName: String = "AnalyticsEventClick2"
    public static var resourceLink: String = "http://www.google.com/AnalyticsEventClick2"

    let parameter: String

    public init(parameter: String) {
        self.parameter = parameter
    }
}

