//
//  xtesta.swift
//  testingiosTests
//
//  Created by Shifat Ahmed on 2/4/19.
//  Copyright © 2019 Shifat Ahmed. All rights reserved.
//

import Foundation
import XCTest






@testable import testingios

class StudentTests : XCTestCase{
    
    
    func testValidFirstName(){
        
        let student = Student(firstname: "A", lastname: "alif")
        XCTAssertTrue(student.validLastName())
    }
    
    
    func testValidLastName(){
        let student = Student(firstname: "ajia", lastname: "test")
        XCTAssertTrue(student.validFirstName())
        
    }
    
    // add more
    
    
    func testAddFriends(){
        let jobs = Student(firstname: "jobs", lastname: "setve")
        let gates = Student(firstname: "gates", lastname: "bill")
        
        var right = 0
        var wrong  = 440
        
        
        XCTAssertTrue(jobs.friends.count == right)
        XCTAssertFalse(jobs.friends.count == wrong)
        
    }
    
    
    func test_check_both_names(){
        let student = Student(firstname: "aaaa" , lastname: "llll")
        XCTAssertTrue(student.validBothname())
    }
    
    func test_check_one_correct_name(){
        let student = Student(firstname: "aa" , lastname: "llll")
        XCTAssertFalse(student.validBothname())
    }
    
    
    
    func testAddFriennumbers(){
        let jobs = Student(firstname: "jobs", lastname: "setve")
        let gates = Student(firstname: "gates", lastname: "bill")
        
        XCTAssertTrue(jobs.friends.count == 0)
        
        jobs.addFriend(friend: gates)
        
        XCTAssertFalse(jobs.friends.count == 0)
        XCTAssertTrue(jobs.friends.count > 0)
        
        
        
    }
}

