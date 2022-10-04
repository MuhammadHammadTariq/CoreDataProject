//
//  ApiResponse+CoreDataProperties.swift
//  TaskCoreData
//
//  Created by Dotshape Dev on 27/09/2022.
//
//

import Foundation
import CoreData


extension ApiResponse {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ApiResponse> {
        return NSFetchRequest<ApiResponse>(entityName: "ApiResponse")
    }

    @NSManaged public var sunrise: String?
    @NSManaged public var sunset: String?
    @NSManaged public var solarNoon: String?
    @NSManaged public var dayLength: Int32
    @NSManaged public var civilTwilightBegin: String?
    @NSManaged public var civilTwilightEnd: String?
    @NSManaged public var nauticalTwilightBegin: String?
    @NSManaged public var nauticalTwilightEnd: String?
    @NSManaged public var astronomicalTwilightBegin: String?
    @NSManaged public var astronomicalTwilightEnd: String?
    @NSManaged public var status: String?

}

extension ApiResponse : Identifiable {

}
