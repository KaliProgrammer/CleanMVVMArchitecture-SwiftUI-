//
//  Endpoint+Extension.swift
//  CleanMVVM
//
//  Created by MacBook Air on 19.05.2023.
//

import Foundation

extension Endpoint {
    var url: URL {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "dummyapi.io"
        components.path = "/data/v1" + path
        components.queryItems = queryItems
        
        guard let url = components.url else {
            preconditionFailure("Invalid URL componets: \(components)")
        }
        return url
    }
    var headers: [String: Any] {
        return [
            "app-id": "64678a881e95558b51908689"
        ]
    }
}


