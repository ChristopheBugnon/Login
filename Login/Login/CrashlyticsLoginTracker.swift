//
//  CrashlyticsLoginTracker.swift
//  Login
//
//  Created by Christophe Bugnon on 21/08/2020.
//

import Foundation

class CrashlyticsLoginTracker: LoginUseCaseOutput {
    func loginSucceeded() {
        // send success event to crashlytics
    }
    
    func loginFailed() {
        // send fail event to crashlytics
    }
}
