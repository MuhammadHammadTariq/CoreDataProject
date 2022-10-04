//
//  UniversityDataApi.swift
//  TaskCoreData
//
//  Created by Dotshape Dev on 28/09/2022.
//

import Foundation


struct UniversityDataApiResult: Codable {
    let domains: [String]
    let alpha_two_code: String
    let country: String
    let web_pages: [String]
    let name: String
    let state: String?
}
