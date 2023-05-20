//
//  UserServices.swift
//  CleanMVVM
//
//  Created by MacBook Air on 19.05.2023.
//

import Foundation
import Combine

protocol UserServiceProtocol: AnyObject {
    var networker: NetworkerProtocol { get }
    
    func getUsers() -> AnyPublisher<Users, Error>
    func getUsers(count: Int) -> AnyPublisher<Users, Error>
    func getUser(id: String) -> AnyPublisher<User, Error>
}

final class UsersService: UserServiceProtocol {
    var networker: NetworkerProtocol
    
    init(networker: NetworkerProtocol = Networker()) {
        self.networker = networker
    }
    
    func getUsers() -> AnyPublisher<Users, Error> {
        let endpoint = Endpoint.users
        
        
        return networker.get(type: Users.self,
                             url: endpoint.url,
                             headers: endpoint.headers)
    }
    
    func getUsers(count: Int) -> AnyPublisher<Users, Error> {
        let endpoint = Endpoint.users(count: count)
        
        print(endpoint.url)
        return networker.get(type: Users.self,
                             url: endpoint.url,
                             headers: endpoint.headers)
    }
    
    func getUser(id: String) -> AnyPublisher<User, Error> {
        let endpoint = Endpoint.user(id: id)
        
        return networker.get(type: User.self,
                             url: endpoint.url,
                             headers: endpoint.headers)
    }
}
