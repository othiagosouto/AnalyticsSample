//
//  File.swift
//
//
//  Created by Thiago Santos on 25.08.24.
//

import Foundation
import InjectSupport
import Factory
import AnalyticsSupport

extension InjectSupport{
    
    var event1: Factory<AnalyticsEvent> {
        self { AnalyticsEventClick() }
    }
    
    var event2: Factory<AnalyticsEvent> {
        self { AnalyticsEventClick2() }
    }
}

extension InjectSupport : EventProvider{
    
    private static var processors: [String: KeyPath<InjectSupport, Factory<AnalyticsEvent>>] = [
        AnalyticsEvenClickKey.eventName: \.event1,
        AnalyticsEvenClickKey2.eventName: \.event2
    ]
    
    public static func register( data: [String: KeyPath<InjectSupport, Factory<AnalyticsEvent>>]) {
        InjectSupport.processors.merge(dict: data)
    }
    
    public func provide(key: any AnalyticsSupport.AnalyticsEventKey) -> (any AnalyticsSupport.AnalyticsEvent)? {
        
        return InjectSupport.processors[type(of:key).eventName].map{self[keyPath: $0]()}
    }
    
    var tracker: Factory<AnalyticsTracker> {
        self { DefaultAnalyticsTracker(eventProvider: self) }
    }
}

extension Dictionary {
    mutating func merge(dict: [Key: Value]){
        for (k, v) in dict {
            updateValue(v, forKey: k)
        }
    }
}
