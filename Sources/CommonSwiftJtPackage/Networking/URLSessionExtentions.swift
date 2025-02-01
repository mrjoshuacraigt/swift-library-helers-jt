//
//  File.swift
//  CommonSwiftJtPackage
//
//  Created by Joshua Taylor on 1/21/25.
//

import Foundation


public extension URLSession {
    
    static let noCacheSession: URLSession = {
        let config = URLSessionConfiguration.default
        config.requestCachePolicy = .reloadIgnoringLocalAndRemoteCacheData
        return URLSession(configuration: config)
    }()
}
