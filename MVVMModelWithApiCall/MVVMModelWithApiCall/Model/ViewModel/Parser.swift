//
//  Parser.swift
//  MVVMModelWithApiCall
//
//  Created by Sainath Bamen on 09/05/23.
//

import Foundation

struct Parse{
    func Parser(completion: @escaping ([Welcome])->()){
        let api = URL(string: "https://api.androidhive.info/contacts/")
        URLSession.shared.dataTask(with: api!) { data, response, error in
            if error != nil{
                print(error?.localizedDescription)
                return
            }
            do{
                let result = try JSONDecoder().decode(Welcome.self, from: data!)
                print(result)
            }catch{
                
            }
            
        }.resume()
        
    }
}
