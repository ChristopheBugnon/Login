//
//  LoginUseCase.swift
//  Login
//
//  Created by Christophe Bugnon on 21/08/2020.
//

import Foundation

public protocol LoginUseCaseOutput {
    func loginSucceeded()
    func loginFailed()
}

final class LoginUseCase {
    let output: LoginUseCaseOutput
    
    init(output: LoginUseCaseOutput) {
        self.output = output
    }
    
    func login(name: String, password: String) {
        // if success
        self.output.loginSucceeded()
        // if fail
        self.output.loginFailed()
    }
}
