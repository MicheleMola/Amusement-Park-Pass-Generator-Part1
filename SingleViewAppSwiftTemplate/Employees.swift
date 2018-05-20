//
//  Employees.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Michele Mola on 20/05/18.
//  Copyright © 2018 Treehouse. All rights reserved.
//

import Foundation

enum ManagerTier: String {
  case shift = "Shift Manager"
  case general = "General Manager"
  case senior = "Senior Manager"
}

struct FoodServiceEmployee: Employee {
  var firstName: String?
  var lastName: String?
  var birthday: Date?
  var streetAddress: String?
  var city: String?
  var state: String?
  var zipCode: Int?
  var socialSecurityNumber: Int?
  
  let areaAccess: [AreaAccess] = [.amusement, .kitchen]
  let rideAccess: [RideAccess] = [.all]
  let discountAccess: DiscountAccess = (15, 25)
  
  init(firstName: String?, lastName: String?, birthday: Date?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, socialSecurityNumber: Int?) throws {
    
    guard let firstName = firstName else { throw InvalidField.invalidFirstName }
    self.firstName = firstName
    
    guard let lastName = lastName else { throw InvalidField.invalidLastName }
    self.lastName = lastName
    
    guard let birthday = birthday else { throw InvalidField.invalidBirthday }
    self.birthday = birthday
    
    guard let streetAddress = streetAddress else { throw InvalidField.invalidAddress }
    self.streetAddress = streetAddress
    
    guard let city = city else { throw InvalidField.invalidCity }
    self.city = city
    
    guard let state = state else { throw InvalidField.invalidState }
    self.state = state
    
    guard let zipCode = zipCode else { throw InvalidField.invalidZipCode }
    self.zipCode = zipCode
    
    guard let socialSecurityNumber = socialSecurityNumber else { throw InvalidField.invalidSocialSecurityNumber }
    self.socialSecurityNumber = socialSecurityNumber
  }
}

struct RideServiceEmployee: Employee {
  var firstName: String?
  var lastName: String?
  var birthday: Date?
  var streetAddress: String?
  var city: String?
  var state: String?
  var zipCode: Int?
  var socialSecurityNumber: Int?
  
  let areaAccess: [AreaAccess] = [.amusement, .rideControl]
  let rideAccess: [RideAccess] = [.all]
  let discountAccess: DiscountAccess = (15, 25)
  
  init(firstName: String?, lastName: String?, birthday: Date?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, socialSecurityNumber: Int?) throws {
    
    guard let firstName = firstName else { throw InvalidField.invalidFirstName }
    self.firstName = firstName
    
    guard let lastName = lastName else { throw InvalidField.invalidLastName }
    self.lastName = lastName
    
    guard let birthday = birthday else { throw InvalidField.invalidBirthday }
    self.birthday = birthday
    
    guard let streetAddress = streetAddress else { throw InvalidField.invalidAddress }
    self.streetAddress = streetAddress
    
    guard let city = city else { throw InvalidField.invalidCity }
    self.city = city
    
    guard let state = state else { throw InvalidField.invalidState }
    self.state = state
    
    guard let zipCode = zipCode else { throw InvalidField.invalidZipCode }
    self.zipCode = zipCode
    
    guard let socialSecurityNumber = socialSecurityNumber else { throw InvalidField.invalidSocialSecurityNumber }
    self.socialSecurityNumber = socialSecurityNumber
  }
}

struct MaintenanceEmployee: Employee {
  var firstName: String?
  var lastName: String?
  var birthday: Date?
  var streetAddress: String?
  var city: String?
  var state: String?
  var zipCode: Int?
  var socialSecurityNumber: Int?
  
  let areaAccess: [AreaAccess] = [.amusement, .rideControl, .kitchen, .maintenance]
  let rideAccess: [RideAccess] = [.all]
  let discountAccess: DiscountAccess = (15, 25)
  
  init(firstName: String?, lastName: String?, birthday: Date?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, socialSecurityNumber: Int?) throws {
    
    guard let firstName = firstName else { throw InvalidField.invalidFirstName }
    self.firstName = firstName
    
    guard let lastName = lastName else { throw InvalidField.invalidLastName }
    self.lastName = lastName
    
    guard let birthday = birthday else { throw InvalidField.invalidBirthday }
    self.birthday = birthday
    
    guard let streetAddress = streetAddress else { throw InvalidField.invalidAddress }
    self.streetAddress = streetAddress
    
    guard let city = city else { throw InvalidField.invalidCity }
    self.city = city
    
    guard let state = state else { throw InvalidField.invalidState }
    self.state = state
    
    guard let zipCode = zipCode else { throw InvalidField.invalidZipCode }
    self.zipCode = zipCode
    
    guard let socialSecurityNumber = socialSecurityNumber else { throw InvalidField.invalidSocialSecurityNumber }
    self.socialSecurityNumber = socialSecurityNumber
  }
}

struct Manager: Employee {
  var firstName: String?
  var lastName: String?
  var birthday: Date?
  var streetAddress: String?
  var city: String?
  var state: String?
  var zipCode: Int?
  var socialSecurityNumber: Int?
  
  var managementTier: ManagerTier
  
  let areaAccess: [AreaAccess] = [.amusement, .rideControl, .kitchen, .maintenance, .office]
  let rideAccess: [RideAccess] = [.all]
  let discountAccess: DiscountAccess = (25, 25)
  
  init(firstName: String?, lastName: String?, birthday: Date?, streetAddress: String?, city: String?, state: String?, zipCode: Int?, socialSecurityNumber: Int?, managementTier: ManagerTier?) throws {
    
    guard let firstName = firstName else { throw InvalidField.invalidFirstName }
    self.firstName = firstName
    
    guard let lastName = lastName else { throw InvalidField.invalidLastName }
    self.lastName = lastName
    
    guard let birthday = birthday else { throw InvalidField.invalidBirthday }
    self.birthday = birthday
    
    guard let streetAddress = streetAddress else { throw InvalidField.invalidAddress }
    self.streetAddress = streetAddress
    
    guard let city = city else { throw InvalidField.invalidCity }
    self.city = city
    
    guard let state = state else { throw InvalidField.invalidState }
    self.state = state
    
    guard let zipCode = zipCode else { throw InvalidField.invalidZipCode }
    self.zipCode = zipCode
    
    guard let socialSecurityNumber = socialSecurityNumber else { throw InvalidField.invalidSocialSecurityNumber }
    self.socialSecurityNumber = socialSecurityNumber
    
    guard let managementTier = managementTier else { throw InvalidField.invalidManagementTier }
    self.managementTier = managementTier
  }
}

extension Employee {
  func print() -> String? {
    guard let firstName = self.firstName, let lastName = self.lastName, let birthday = self.birthday, let streetAddress = self.streetAddress, let city = self.city, let state = self.state, let zipCode = self.zipCode, let socialSecurityNumber = self.socialSecurityNumber else { return nil }
    
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MM/dd/yyyy"
    
    let date = dateFormatter.string(from: birthday)
    
    var info = "FirstName: \(firstName)\nLastName: \(lastName)\nBirthday: \(date),\nStreetAddress: \(streetAddress)\nCity: \(city)\nState: \(state)\nZipCode: \(zipCode)\nSocial Security Number: \(socialSecurityNumber)"
    
    if self is Manager {
      guard let manager = self as? Manager else { return nil }
      info += "\nManagement Tier: \(manager.managementTier)"
    }
    
    return info
  }
}

