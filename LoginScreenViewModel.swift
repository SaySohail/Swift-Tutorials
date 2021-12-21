//
//  LoginScreenViewModel.swift
//  Global Sourcing
//
//  Created by Sohail on 05/08/21.
//

import Foundation
import Combine

class LoginViewModel: ObservableObject {
    
    @Published var authvar = MWSAuthenticationModel(authenticationStatus: false, saml: "")
    var cancellationToken: AnyCancellable?
    @Published var credentials = Credentials()
    @Published var showProgressView = false
    @Published var error: Authentication.AuthenticationError?
    @Published var storeCredentialsNext = false
    
    var loginDisabled: Bool {
        credentials.email.isEmpty || credentials.password.isEmpty
    }
    
    
}
extension LoginViewModel {
//    func getAuth(userName: String, password: String)  {
//        //setting progress view to true
//        showProgressView = true
//        print("Username: \(userName)")
//        print("Password: \(password)")
//        let loginString = "\(userName):\(password)"
//        guard let loginData = loginString.data(using: String.Encoding.utf8) else {
//            return
//        }
//        let base64LoginString = loginData.base64EncodedString()
//        cancellationToken = MWSAuthenticator.request(.obtainSAML, base64String: base64LoginString) //4
//            .mapError({ (error) -> Error in //5
//                print(error)
//                return error
//            })
//            .sink(receiveCompletion: {_ in}, //6
//                  receiveValue: {
////                 print($0)//7
//                    self.authvar.saml = $0.saml
//                    self.authvar.authenticationStatus = $0.authenticationStatus
//                    print("S")
//
//
//                  })
//
//    }
    func getAuth()  {
        //setting progress view to true
        showProgressView = true
        print("Username: \(credentials.email)")
        print("Password: \(credentials.password)")
        let loginString = "\(credentials.email):\(credentials.password)"
        guard let loginData = loginString.data(using: String.Encoding.utf8) else {
            return
            
        }
        let base64LoginString = loginData.base64EncodedString()
        cancellationToken = MWSAuthenticator.request(.obtainSAML, base64String: base64LoginString) //4
            .mapError({ [self] (error) -> Error in //5
                print(error)
                self.showProgressView = false
                self.credentials = Credentials()
                self.error = .invalidCredentials
                return error
            })
            .sink(receiveCompletion: {_ in}, //6
                  receiveValue: { [self] in
//                 print($0)//7
                    showProgressView = false
                    self.authvar.saml = $0.saml
                    self.authvar.authenticationStatus = $0.authenticationStatus
                    print("S")
                    
                    if $0.authenticationStatus {
                        if self.storeCredentialsNext {
                            KeychainStorage.saveCredentials(self.credentials)
                            self.storeCredentialsNext = false
                        }
//                        isAuthentication(samlString: self.authvar.saml)
                    } else {
                        self.credentials = Credentials()
                        self.error = .invalidCredentials
                        
                    }
                    
                    
                  })
        
        
    }
    
    func login(completion: @escaping (Bool) -> Void) {
        getAuth()
        if self.authvar.authenticationStatus == true {
            completion(true)
        }
    }
    
    func isAuthentication(samlString: String){
        print("Inside IS authenticator")
        cancellationToken = ISAuthenticator.request(samlString: samlString)
            .mapError({ (error) -> Error in //5
                            print(error)
                            return error
                        })
                        .sink(receiveCompletion: {_ in}, //6
                              receiveValue: {_ in
                              //                 print($0)//7
                                                  print("IS call success")
                              
                              
                                                })
            
    }
}
