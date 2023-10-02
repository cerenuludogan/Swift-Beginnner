//
//  ViewController.swift
//  HaritalarUygulamasi
//
//  Created by Ceren Uludoğan on 24.09.2023.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController,MKMapViewDelegate,CLLocationManagerDelegate{

    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()//Konum ile ilgili olayları yönetmek için kullandık.
    
    @IBOutlet weak var isimTextField: UITextField!
    @IBOutlet weak var notTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()//Uygulamayı kullanırken konum alınacak
        locationManager.startUpdatingLocation()
        
        let gestureRecognizer = UILongPressGestureRecognizer(target: self, action: #selector(konumSec(gestureRecognizer: )))//Uzun basma sonucunda gerçekleşecek
        
        gestureRecognizer.minimumPressDuration = 3
        mapView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func konumSec(gestureRecognizer: UILongPressGestureRecognizer){
        if gestureRecognizer.state == .began{
            let dokunulanNokta = gestureRecognizer.location(in: mapView)
            let dokunulanKordinat = mapView.convert(dokunulanNokta, toCoordinateFrom: mapView)
            
            let annotation = MKPointAnnotation()//Nokta belirleme
            annotation.coordinate = dokunulanKordinat
            annotation.title = isimTextField.text
            annotation.subtitle = notTextField.text
            mapView.addAnnotation(annotation)
            
        }
        
        
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       // print(locations[0].coordinate.latitude)
       //print(locations[0].coordinate.longitude)
        let location = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude)
        
        let span = MKCoordinateSpan(latitudeDelta: 0.9, longitudeDelta: 0.9)//Zoom değeri
        let region = MKCoordinateRegion(center: location, span: span)
        mapView.setRegion(region, animated: true)//Haritada bir yere gitmek istersek
        
    }


}

