//
//  User.swift
//  MVVMModelWithApiCall
//
//  Created by Sainath Bamen on 09/05/23.
//

import Foundation

struct Welcome: Codable{
    let contacts:[Contact]
    
    
    
}

struct Contact: Codable{
    let name: String
    let email: String
}

