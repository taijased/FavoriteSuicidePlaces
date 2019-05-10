//
//  MapViewController.swift
//  FavoriteSuicidePlaces
//
//  Created by Maxim Spiridonov on 10/05/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit
import MapKit
class MapViewController: UIViewController {
    
    var place: Place!
    let annatationIdentifier = "annatationIdentifier"

    @IBOutlet var mapView: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPlaceMark()
    }
    

    @IBAction func closeVC(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
    private func setupPlaceMark() {
        guard let location = place.location else { return }
        
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString(location) { (placemarks, error) in
            if let error = error {
                print(error)
                return
            } else {
                guard let placemarks = placemarks else { return }
                let placemark = placemarks.first
                
                let annotation = MKPointAnnotation()
                
                annotation.title = self.place.name
                annotation.subtitle = self.place.type
                
                guard let placemarkLocation = placemark?.location else { return }
                
                annotation.coordinate = placemarkLocation.coordinate
                
                self.mapView.showAnnotations([annotation], animated: true)
                self.mapView.selectAnnotation(annotation, animated: true)
                
            }
        }
    }
    

}

extension MapViewController: MKMapViewDelegate {
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        guard !(annotation is MKUserLocation) else { return nil }
        var annatationView = mapView.dequeueReusableAnnotationView(withIdentifier:  annatationIdentifier) as? MKPinAnnotationView
        
        if annatationView == nil {
            annatationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: annatationIdentifier)
            annatationView?.canShowCallout = true
        }
        
        if let imageData = place.imageData {
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
            imageView.layer.cornerRadius = 10
            imageView.clipsToBounds = true
            imageView.image = UIImage(data: imageData)
            
            annatationView?.rightCalloutAccessoryView = imageView
        }
        
        
        return annatationView
    }
}
