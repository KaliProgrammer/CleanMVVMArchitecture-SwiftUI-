//
//  UserDetailConfigurator.swift
//  CleanMVVM
//
//  Created by MacBook Air on 19.05.2023.
//

import Foundation

final class UserDetailConfigurator {
    public static func configureUserDetailView(with user: User) -> UserDetailView {
        let userDetailView = UserDetailView(viewModel: UserDetailViewModel(user: user))
        return userDetailView
    }
}
