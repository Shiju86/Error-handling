//
//  Credentials.swift
//  GenericExample
//
//  Created by Shiju Varghese on 24/06/18.
//  Copyright © 2018 Shiju. All rights reserved.
//

import Foundation

enum CredentialError: Error {
  
  case noFirstName
  case noLastName
  case noEmail
  case noPhoneNumber
  
}

class Credentials {
  
  var firstName: String
  var lastName: String
  var email: String
  var phoneNumber: String
  
  init(firstName: String, lastName: String, email: String, phoneNumber: String) throws  {
   
    if firstName == "" {
      throw CredentialError.noFirstName
    }else {
      
      self.firstName = firstName.trim()
      print(self.firstName)
    }
   
    if lastName == "" {
      throw CredentialError.noLastName
    }else {
      
      self.lastName = lastName.trim()
    }
    if email.lowercased() == "" {
      throw CredentialError.noEmail
    }else {
      
      self.email = email.trim()
    }
    if phoneNumber == "" {
      throw CredentialError.noPhoneNumber
    }else {
      
      self.phoneNumber = phoneNumber.trim()
    }
  }
}

