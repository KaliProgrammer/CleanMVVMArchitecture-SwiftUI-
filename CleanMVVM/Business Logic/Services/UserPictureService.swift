//
//  UserPictureService.swift
//  CleanMVVM
//
//  Created by MacBook Air on 19.05.2023.
//

import Foundation
import Combine

protocol UserPictureServiceProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    
    func getUserAvatarData(urlString: String) -> AnyPublisher<Data, Error>
}


final class UserPictureService: UserPictureServiceProtocol {
    var networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    enum UserPictureError: Error {
        case dataInvalid
    }
    
    enum NetworkError: Error {
        case invalidURL
    }
    
    func getUserAvatarData(urlString: String) -> AnyPublisher<Data, Error> {
        guard let url = URL(string: urlString) else {
            return Fail<Data, Error>(error: NetworkError.invalidURL).eraseToAnyPublisher()
        }
        return networker.getData(url: url, headers: [:])
            .mapError { _ in UserPictureError.dataInvalid }
            .eraseToAnyPublisher()
    }
    
    
}
