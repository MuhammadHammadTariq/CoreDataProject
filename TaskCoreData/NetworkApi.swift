//
//  NetworkApi.swift
//  TaskCoreData
//
//  Created by Dotshape Dev on 27/09/2022.
//

import Foundation
import Alamofire

struct NetworkApi {
    
    func getDataAlamo(complition : @escaping (_ success: [UniversityDataApiResult]) ->Void) {
        
        AF.request("http://universities.hipolabs.com/search?country=United+States").response { (response) in
            guard let data = response.data else{
                return
            }
            
            var result: [UniversityDataApiResult]?
            do {
                result = try JSONDecoder().decode([UniversityDataApiResult].self, from: data)
            }
            catch {
                print("failed to decode with error: \(error)")
            }
            
            guard let final = result else {
                return
            }
             complition(final)
            
        }
    }
}
