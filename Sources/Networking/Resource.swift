//
//  Resource.swift
//  SwiftCalc
//
//  Created by Pradeep Dahiya on 04/04/23.
//

import Foundation
public enum HTTPMethod: String {
    case get = "GET"
    case put = "PUT"
    case post = "POST"
    case delete = "DELETE"
}
public struct Resource<A> {
    let url: String
    let method: HTTPMethod
    let parse: (Data) -> A?
    public init(url: String, method: HTTPMethod, p: @escaping (Data) -> A? ) {
        self.url = url
        self.method = method
        self.parse = p
    }
}
