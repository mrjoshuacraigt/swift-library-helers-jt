//
//  File.swift
//  CommonSwiftJtPackage
//
//  Created by Joshua Taylor on 1/21/25.
//

import Foundation

@available(iOS 13.0, *)
struct RemoteFile<T: Decodable> {
    let url: URL
    let type: T.Type
    let urlSession: URLSession
    
    var contents: T {
        get async throws {
            let (data, _) = try await urlSession.data(from: url)
            return try JSONDecoder().decode(T.self, from: data)
        }
    }
}
