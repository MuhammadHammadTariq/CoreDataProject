//
//  CoreData.swift
//  TaskCoreData
//
//  Created by Dotshape Dev on 27/09/2022.
//

import Foundation


struct APIResponse: Codable {
    let status: String
    let sunrise: String
    let sunset: String
    let solar_noon: String
    let day_length: Int
    let civil_twilight_begin: String
    let civil_twilight_end: String
    let nautical_twilight_begin: String
    let nautical_twilight_end: String
    let astronomical_twilight_begin: String
    let astronomical_twilight_end: String
}
