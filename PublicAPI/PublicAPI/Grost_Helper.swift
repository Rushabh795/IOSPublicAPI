//
//  Grost_Helper.swift
//  PublicAPI
//
//  Created by Rushabh Shah on 2022-10-18.
//

import Foundation
class Grost_Helper
{
    
       static  private let urlSring = "https://gorest.co.in/public/v2/users";
       static  private let session:URLSession =
        {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
        
    }()
    static public func fetchDir()
        {
            guard let url = URL(string: urlSring)
            else{preconditionFailure("Not able to convert  \(urlSring)")}
            let request = URLRequest(url: url)
            let task = session.dataTask(with: request) { data, response ,error  in
                if let data = data {
                    do {
    //                     let jsonData = try JSONSerialization.jsonObject(with: data)
    //                    guard
    //                        let jsonDir = jsonData as?[AnyHashable: Any],
    //                        let films = jsonDir["films"] as? [String],
    //                        let name = jsonDir["name"] as? String,
    //                        let height = jsonDir["height"] as? Int
    //                        else
    //                            {
    //                                preconditionFailure("Not able to convert")
    //                            }
    //                    var person = People (name: name , films: films , height: height)
    //                    print(person.height)
    //
                        
                        let decoder = JSONDecoder()
                        let people = try decoder.decode(People.self, from: data)
                        print (people.name)
                    }catch let error{
                    print ("\(error)")
                    }
                }
                else if let error = error {
                    print("error with data")
                }else
                {
                    print("Something wrong with url")

                }
            }
            task.resume()
        }
      }
}


