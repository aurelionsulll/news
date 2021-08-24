//
//  APIError.swift
//  news
//
//  Created by mehdi on 24/08/2021.
//

import Foundation

enum APIError: Error {
    case decodingError
    case errorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .decodingError:
            return "Faild to decode the object from the server"
        case .errorCode(let code):
            return "\(code) somthing went wrong"
        case .unknown:
            return "Unkonw error"
        }
    }
}
