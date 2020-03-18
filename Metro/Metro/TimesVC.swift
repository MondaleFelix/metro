//
//  TimesVC.swift
//  Metro
//
//  Created by Mondale on 3/17/20.
//  Copyright © 2020 Mondale. All rights reserved.
//

import UIKit
import CoreLocation

class TimesVC: UIViewController {

    let locationManager = CLLocationManager()

    
    let tableView = UITableView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupLocationManger()
//        configureTableView()
    }
    
    
    func setupLocationManger(){
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    
    func configureTableView(){
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "egg")


        tableView.rowHeight = 100
        tableView.delegate = self
        tableView.dataSource = self

        NSLayoutConstraint.activate([

            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),


        ])

    }

}


extension TimesVC : UITableViewDelegate{


}


extension TimesVC : UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "egg", for: indexPath)
        let locationLabel = UILabel()
        cell.addSubview(locationLabel)
        locationLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            locationLabel.topAnchor.constraint(equalTo: cell.topAnchor),
            locationLabel.leadingAnchor.constraint(equalTo: cell.leadingAnchor),
            locationLabel.trailingAnchor.constraint(equalTo: cell.trailingAnchor),
            locationLabel.bottomAnchor.constraint(equalTo: cell.bottomAnchor)


        ])

        return cell
    }

}

extension TimesVC : CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last {
            if location.horizontalAccuracy > 0 {
                let longitude = location.coordinate.longitude
                let latitude = location.coordinate.latitude
                
                print(longitude)
                print(latitude)
            }
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
}


