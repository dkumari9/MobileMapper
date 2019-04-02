//
//  ViewController.swift
//  MobileMapper
//
//  Created by Divya Kumari 2019 on 4/1/19.
//  Copyright © 2019 SHS. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate {
    @IBOutlet weak var mapView: MKMapView!
    
    var currentLocation: CLLocation!
    
    var locationManager = CLLocationManager()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.startUpdatingLocation()
        
        locationManager.requestWhenInUseAuthorization()
        print(mapView.showsUserLocation)
        mapView.showsUserLocation = true
        
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        currentLocation = locations[0]
        print(currentLocation)
    }


}

