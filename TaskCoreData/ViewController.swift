//
//  ViewController.swift
//  TaskCoreData
//
//  Created by Dotshape Dev on 27/09/2022.
//

import UIKit
import CoreData
import NVActivityIndicatorView

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var loading: NVActivityIndicatorView!
    
    var universityData = [UniversityDataApiResult]()
    var fetchDomainData = [FetchDomainData]()
    var domainCom: [String] = []
    var domainEdu: [String] = []
    var domainOthers: [String] = []
    var firstFiveCom: [String] = []
    var firstFiveEdu: [String] = []
    var firstFiveOthers: [String] = []
    
    var network = NetworkApi()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Data From Api"
        tableView.delegate = self
        tableView.dataSource = self
        startAnimation()

        network.getDataAlamo { success in
            self.loading.stopAnimating()
            for item in success {
                self.universityData.append(item)
            }
            print(self.universityData[0])
            print(self.universityData.count)
            
            
            for items in self.universityData {
                guard let firstDomain =  items.domains.first else {
                    self.domainOthers.append(items.domains.first ?? "no other data also")
                    continue
                }
                if firstDomain.hasSuffix(".com") {
                    self.domainCom.append(firstDomain)
                } else if firstDomain.hasSuffix(".edu") {
                    self.domainEdu.append(firstDomain)
                } else {
                    self.domainOthers.append(firstDomain)
                }
            }
            
            self.firstFiveCom = self.checkValidArray(stringArray: self.domainCom)
            self.firstFiveEdu = self.checkValidArray(stringArray: self.domainEdu)
            self.firstFiveOthers = self.checkValidArray(stringArray: self.domainOthers)
            
            self.fetchDomainData.append(FetchDomainData.init(name: ".Com", domainsString: self.firstFiveCom))
            self.fetchDomainData.append(FetchDomainData.init(name: ".Edu", domainsString: self.firstFiveEdu))
            self.fetchDomainData.append(FetchDomainData.init(name: "Others", domainsString: self.firstFiveOthers))
            
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
    
    func startAnimation() {
        loading = NVActivityIndicatorView(frame: .zero, type: .ballRotateChase, color: .blue, padding: 0)
        loading.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loading)
        NSLayoutConstraint.activate([
            loading.widthAnchor.constraint(equalToConstant: 40),
            loading.heightAnchor.constraint(equalToConstant: 40),
            loading.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loading.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        loading.startAnimating()
    }
    
    func checkValidArray(stringArray: [String]) -> [String]{
        var arr: [String] = []
        if !stringArray.isEmpty {
            if stringArray.count >= 5 {
                arr = Array(stringArray[0...4])
            } else {
                arr = Array(arrayLiteral: stringArray[0])
            }
        }
        return arr
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        fetchDomainData.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return fetchDomainData[section].name
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fetchDomainData[section].domainsString.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Data", for: indexPath)
        cell.textLabel?.text = fetchDomainData[indexPath.section].domainsString[indexPath.row]
        return cell
    }
    
}

