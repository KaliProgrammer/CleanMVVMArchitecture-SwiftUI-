//
//  CleanMVVMApp.swift
//  CleanMVVM
//
//  Created by MacBook Air on 19.05.2023.
//

import SwiftUI

@main
struct CleanMVVMApp: App {
    var body: some Scene {
        WindowGroup {
            UsersConfigurator.configureUsersView()
        }
    }
}
