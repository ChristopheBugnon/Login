//
//  LoginUseCaseOutputComposer.swift
//  Login
//
//  Created by Christophe Bugnon on 21/08/2020.
//

import Foundation

public class LoginUseCaseOutputComposer: LoginUseCaseOutput {
    let outputs: [LoginUseCaseOutput]
    
    public init(_ outputs: [LoginUseCaseOutput]) {
        self.outputs = outputs
    }
    
    public func loginSucceeded() {
        self.outputs.forEach { $0.loginSucceeded() }
    }
    
    public func loginFailed() {
        self.outputs.forEach { $0.loginFailed() }
    }
}
