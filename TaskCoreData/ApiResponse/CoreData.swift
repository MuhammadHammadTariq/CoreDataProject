//
//  CoreData.swift
//  TaskCoreData
//
//  Created by Dotshape Dev on 27/09/2022.
//

import Foundation
import UIKit

struct CoreDataUtility {
    
    
    
    func saveApiResponse(networkApiData: APIResponse)
    {
        DispatchQueue.main.async {
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let data = ApiResponse(context: context)
            data.astronomicalTwilightBegin = networkApiData.results.astronomical_twilight_begin
            data.astronomicalTwilightEnd = networkApiData.results.astronomical_twilight_end
            data.civilTwilightBegin =  networkApiData.results.civil_twilight_begin
            data.civilTwilightEnd = networkApiData.results.civil_twilight_end
            data.dayLength = networkApiData.results.day_length
            data.nauticalTwilightBegin = networkApiData.results.nautical_twilight_begin
            data.nauticalTwilightEnd = networkApiData.results.nautical_twilight_end
            data.solarNoon = networkApiData.results.solar_noon
            data.status = networkApiData.status
            data.sunrise = networkApiData.results.sunrise
            data.sunset = networkApiData.results.sunset
            
            do {
                try context.save()
            }
            catch {

            }
        }
        
    }
    
}
