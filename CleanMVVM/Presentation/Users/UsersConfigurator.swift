//
//  UsersConfigurator.swift
//  CleanMVVM
//
//  Created by MacBook Air on 19.05.2023.
//

import Foundation

final class UsersConfigurator {
    public static func configureUsersView(with viewModel: UsersViewModel = UsersViewModel()) -> UsersView {
        let usersView = UsersView(viewModel: viewModel)
        return usersView
    }
}
