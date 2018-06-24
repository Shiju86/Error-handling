//
//  ViewController.swift
//  GenericExample
//
//  Created by Shiju Varghese on 17/06/18.
//  Copyright © 2018 Shiju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
  // print(checkIfEqual(x: "shiju", y: "shiju"))
    
    //Mark: Check SignUp- Error Handling
    do {
      let credential = try Credentials(firstName: " shiju ", lastName: "", email: "", phoneNumber: "")
      
      print(credential.firstName)
      
      print(credential.email)
    }
    catch CredentialError.noFirstName {
      print("No First name")

    }
    catch CredentialError.noLastName {
      print("No Last name")

    }
    catch CredentialError.noEmail {
      print("No Email")

    }
    catch CredentialError.noPhoneNumber {
      print("No Phone Number")

    }
    catch {

    }
    
  }
  //Gereric -
  func checkIfEqual<T>(x:T, y:T) -> Bool where T: Equatable {
    
    return x == y
    
  }
  
}

