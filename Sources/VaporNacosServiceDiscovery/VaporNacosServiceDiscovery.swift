// The Swift Programming Language
// https://docs.swift.org/swift-book

import ServiceDiscovery
import Dispatch

public struct NacosService: Hashable {
    public let group: String
    public let namespace: String
    public let name: String
}

public struct NacosInstance: Hashable {
    public let ip: String
    public let port: Int
    public let weight: Double
    public let healty: Bool
    public let enable: Bool
    public let ephemeral: Bool
    public let cluster: String
    public let service: String
    public let heartBeatInterval: Int
    public let heartBeatTimeOut: Int
    public let ipDeleteTimeout: Int
}

public final class NacosServiceDiscovery: ServiceDiscovery {
    
    public var defaultLookupTimeout: DispatchTimeInterval = .seconds(10)
    
    public typealias Service = NacosService
    
    public typealias Instance = NacosInstance
    
    public func subscribe(
        to service: NacosService,
        onNext nextResultHandler: @escaping (Result<[NacosInstance], Error>) -> Void,
        onComplete completionHandler: @escaping (CompletionReason) -> Void
    ) -> CancellationToken {
        return CancellationToken.init()
    }
    
    public func lookup(
        _ service: NacosService,
        deadline: DispatchTime?,
        callback: @escaping (Result<[NacosInstance], Error>) -> Void
    ) {
        
    }
}
