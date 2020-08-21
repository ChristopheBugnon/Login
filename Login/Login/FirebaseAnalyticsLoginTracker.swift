//
//  FirebaseAnalyticsLoginTracker.swift
//  Login
//
//  Created by Christophe Bugnon on 21/08/2020.
//

import Foundation

class FirebaseAnalyticsLoginTracker: LoginUseCaseOutput {
    func loginSucceeded() {
        // send success event to firebase
    }
    
    func loginFailed() {
        // send fail event to firebase
    }
}
