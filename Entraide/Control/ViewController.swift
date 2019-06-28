//
//  ViewController.swift
//  Entraide
//
//  Created by Sofyane Oulefki on 28/06/2019.
//  Copyright © 2019 Sofyane Oulefki. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, UISearchBarDelegate {

    
    @IBOutlet weak var map: MKMapView!
    
    
    @IBAction func searchButton(_ sender: Any) {
        
    let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        present(searchController, animated: true, completion : nil)
        
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        UIApplication.shared.beginIgnoringInteractionEvents()
        
        let activityIndicator = UIActivityIndicatorView()
        //activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorView.Style.gray
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        
        //self.viewaddSubview(activityIndicator)
        
        searchBar.resignFirstResponder()
        dismiss(animated: true, completion: nil)
        
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = searchBar.text
        
        let activateSearch = MKLocalSearch(request: searchRequest)
        
        activateSearch.start { ( response, error) in
            
            activityIndicator.stopAnimating()
            UIApplication.shared.endIgnoringInteractionEvents()
            
            
            if response == nil{
                print("ERROR")
            }
            else{
                let annotations = self.map.annotations
                //self.map.removeAnnotation(annotations as! MKAnnotation)
                
//                let latitude = response?.boundingRegion.center.latitude
//                let longitude = response?.boundingRegion.center.longitude
//
//                let annotation = MKPointAnnotation()
//                annotation.title = searchBar.text
//                annotation.coordinate = CLLocationCoordinate2DMake(latitude!, longitude!)
//                self.myMapView.addAnnotation(annotation)
//
//                let coordinate:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
//                let span = MKCoordinateSpanMake (0.1, 0.1)
//                let region = MKCoordinateRegionMake (coordinate, span)
//                self.myMapView.setRegion(region, animated: true)
                
                let location = CLLocationCoordinate2D(latitude: 48.8542869, longitude: 2.436506)
                
                // Zoom sur la carte
                let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
                let region = MKCoordinateRegion(center: location, span: span)
                self.map.setRegion(region, animated: true)
                
                let annotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "Ici c'est Simplon"
                annotation.subtitle = "Formation Swift"
                self.map.addAnnotation(annotation)
                
            }
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

