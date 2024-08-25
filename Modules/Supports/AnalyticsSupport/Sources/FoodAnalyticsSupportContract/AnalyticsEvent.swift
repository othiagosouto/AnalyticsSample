//
//  File.swift
//  
//
//  Created by Thiago Santos on 25.08.24.
//

import Foundation

public protocol AnalyticsEvent {

    func provide(params: AnalyticsEventKey) -> AnalytictEventData
}

public protocol AnalyticsEventKey  {
    /**
     * Represents the event name
     */
    static var eventName: String {get}

    /**
     * Link to the resource related to this event, preferably to Iris.
     */
    static var resourceLink: String {get}
}

public struct AnalytictEventData{
    public let content: String

    public init(content: String) {
        self.content = content
    }

}

public protocol AnalyticsTracker {

    func track(key: any AnalyticsEventKey)
}


public protocol EventProvider {
    func provide(key: AnalyticsEventKey) -> AnalyticsEvent?
}

public struct DefaultAnalyticsTracker : AnalyticsTracker {
    let eventProvider: EventProvider

    public func track(key: any AnalyticsEventKey) {
        let event : AnalyticsEvent? = eventProvider.provide(key: key)

        if let unwrapped = event {
            print("Event \(type(of:key).eventName) has \(unwrapped.provide(params: key).content)")
        }
    }

    public init(eventProvider: EventProvider) {
        self.eventProvider = eventProvider
    }
}
