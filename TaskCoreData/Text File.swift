//
//  Text File.swift
//  TaskCoreData
//
//  Created by Dotshape Dev on 04/10/2022.
//

import Foundation

//    @IBOutlet weak var tableView: UITableView!

//    @IBOutlet weak var sunrise: UILabel!
//    @IBOutlet weak var sunset: UILabel!
//    @IBOutlet weak var status: UILabel!
//    @IBOutlet weak var sunriseText: UILabel!
//    @IBOutlet weak var sunsetText: UILabel!
//    @IBOutlet weak var statusText: UILabel!

//    var context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//    var coreData = CoreDataUtility()
//    var result:[ApiResponse] = []

//viewDidLoad()
//        let nib = UINib(nibName: "TableViewCell", bundle: nil)
//        tableView.delegate = self
//        tableView.dataSource = self
//        tableView.register(nib, forCellReuseIdentifier: "TableViewCell")

//            self.coreData.saveApiResponse(networkApiData: success)
//            self.getAllItems()
//            var rslt = self.result[0]
//            DispatchQueue.main.async {
//                self.sunriseText.text = rslt.sunrise
//                self.sunsetText.text = rslt.sunset
//                self.statusText.text = rslt.status
//            }

//        sunrise.text = "sunrise"
//        sunset.text = "sunset"
//        status.text = "status"

//functions
//cellforrowat
//        let cell = self.tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
////        cell.textLabel?.text = universityData[indexPath.row].domains.first
//        cell.domains.text = universityData[indexPath.row].domains.first
//        cell.alphaTwoCode.text = universityData[indexPath.row].alpha_two_code
//        cell.country.text = universityData[indexPath.row].country
//        cell.webPages.text = universityData[indexPath.row].web_pages.first
//        cell.name.text = universityData[indexPath.row].name
//        cell.state.text = universityData[indexPath.row].state

//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 200
//    }
    
//    func getAllItems() {
//
//        let request = NSFetchRequest<ApiResponse>(entityName: "ApiResponse")
//        do {
//            result = try context.fetch(request)
//        }
//        catch {
//            print("No data found")
//        }
//    }
    
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return models.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Data", for: indexPath)
//        return cell
//    }

//api
//import UIKit

//struct NetworkApi {
//
//    func getData(complition : @escaping (_ success: APIResponse) ->Void) {
//        let urlString = "https://api.sunrise-sunset.org/json?date=2020-8-1&lng=37.3230&lat=-122.0322&formatted=0"
//        guard let url = URL(string: urlString) else {
//            return
//        }
//        let task = URLSession.shared.dataTask(with: url, completionHandler: {
//            data, res, error in
//            guard let data = data, error == nil else{
//                return
//            }
//
//            var result: APIResponse?
//            do {
//                result = try JSONDecoder().decode(APIResponse.self, from: data)
//            }
//            catch {
//                print("failed to decode with error: \(error)")
//            }
//
//            guard let final = result else {
//                return
//            }
//            complition(final)
//
//        })
//
//        task.resume()
//    }
//}

//    func getData(complition : @escaping (_ success: [UniversityDataApiResult]) ->Void) {
//        let urlString = "http://universities.hipolabs.com/search?country=United+States"
//        guard let url = URL(string: urlString) else {
//            return
//        }
//        let task = URLSession.shared.dataTask(with: url, completionHandler: {
//            data, res, error in
//            guard let data = data, error == nil else{
//                return
//            }
//
//            var result: [UniversityDataApiResult]?
//            do {
//                result = try JSONDecoder().decode([UniversityDataApiResult].self, from: data)
//            }
//            catch {
//                print("failed to decode with error: \(error)")
//            }
//
//            guard let final = result else {
//                return
//            }
//            complition(final)
//
//        })
//
//        task.resume()
//    }
