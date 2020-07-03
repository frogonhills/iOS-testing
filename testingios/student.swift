//
//  student.swift
//  testingios
//
//  Created by Shifat Ahmed on 2/4/19.
//  Copyright © 2019 Shifat Ahmed. All rights reserved.
//

import Foundation

class Student{
    
    private let firstname : String
    private let lastname : String
    
    var friends: [Student] = []
    
    init(firstname : String , lastname : String){
        self.firstname = firstname
        self.lastname = lastname
    }
    
    func addFriend(friend : Student ){
        friends.append(friend)
    }
    
    func validFirstName() -> Bool {
        return firstname.count > 3
    }
    func validLastName() -> Bool {
        return lastname.count > 3
    }
    func validBothname() -> Bool {
        return firstname.count > 3 && lastname.count > 3
    }
    
    
    
}
