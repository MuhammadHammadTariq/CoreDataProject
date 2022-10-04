//
//  CoreData.swift
//  TaskCoreData
//
//  Created by Dotshape Dev on 27/09/2022.
//

import Foundation

struct APIResponse: Codable {
    let results: APIResponseResults
    let status: String
}

struct APIResponseResults: Codable {
    let sunrise: String
    let sunset: String
    let solar_noon: String
    let day_length: Int32
    let civil_twilight_begin: String
    let civil_twilight_end: String
    let nautical_twilight_begin: String
    let nautical_twilight_end: String
    let astronomical_twilight_begin: String
    let astronomical_twilight_end: String
}
