//
//  LoginUseCaseOutputComposerTests.swift
//  LoginTests
//
//  Created by Christophe Bugnon on 21/08/2020.
//

import XCTest
import Login

class LoginUseCaseOutputComposerTests: XCTestCase {
    func test_composeWithZeroOutput_doesNotCrash() {
        let sut = LoginUseCaseOutputComposer([])
        
        sut.loginSucceeded()
        sut.loginFailed()
    }
    
    func test_composeOutputs_delegatesSucceededMessage() {
        let output1 = LoginUseCaseOutputSpy()
        let output2 = LoginUseCaseOutputSpy()
        let sut = LoginUseCaseOutputComposer([output1, output2])
        
        sut.loginSucceeded()
        
        XCTAssertEqual(output1.loginSucceedCallCount, 1)
        XCTAssertEqual(output1.loginFailedCallCount, 0)
        
        XCTAssertEqual(output2.loginSucceedCallCount, 1)
        XCTAssertEqual(output2.loginFailedCallCount, 0)
    }
    
    func test_composeOutputs_delegatesFailedMessage() {
        let output1 = LoginUseCaseOutputSpy()
        let output2 = LoginUseCaseOutputSpy()
        let sut = LoginUseCaseOutputComposer([output1, output2])
        
        sut.loginFailed()
        
        XCTAssertEqual(output1.loginSucceedCallCount, 0)
        XCTAssertEqual(output1.loginFailedCallCount, 1)
        
        XCTAssertEqual(output2.loginSucceedCallCount, 0)
        XCTAssertEqual(output2.loginFailedCallCount, 1)
    }
    
    private class LoginUseCaseOutputSpy: LoginUseCaseOutput {
        var loginSucceedCallCount = 0
        var loginFailedCallCount = 0
        
        func loginSucceeded() {
            self.loginSucceedCallCount += 1
        }
        
        func loginFailed() {
            self.loginFailedCallCount += 1
        }
    }
}
