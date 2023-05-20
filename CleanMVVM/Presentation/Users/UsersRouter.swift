//
//  UsersRouter.swift
//  CleanMVVM
//
//  Created by MacBook Air on 19.05.2023.
//

import SwiftUI

final class UsersRouter {
    public static func destinationForTappedUser(user: User) -> some View {
        return UserDetailConfigurator.configureUserDetailView(with: user)
    }
}
