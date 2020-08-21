//
//  LoginUseCaseFactory.swift
//  Login
//
//  Created by Christophe Bugnon on 21/08/2020.
//

import Foundation

public class LoginUseCaseFactory {
    public func makeUseCase() -> LoginUseCase {
        return LoginUseCase(output: LoginUseCaseOutputComposer([
            LoginPresenter(),
            CrashlyticsLoginTracker(),
            FirebaseAnalyticsLoginTracker()
        ]))
    }
}
