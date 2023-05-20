//
//  UserDetailRouter.swift
//  CleanMVVM
//
//  Created by MacBook Air on 19.05.2023.
//

import SwiftUI

final class UserDetailRouter {
    public static func destinationForMoreInfoView(user: User) -> some View {
        return MoreInfoConfigurator.configureMoreInfoView(with: user)
    }
}
