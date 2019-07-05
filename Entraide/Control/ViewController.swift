
import MapKit
import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var myMapView: MKMapView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        myMapView.delegate = self
        myMapView.showsUserLocation = true
        myMapView.register(myAnnotation.self, forAnnotationViewWithReuseIdentifier: "toto")
        
        setupUI()
    }
    
    func setupUI()
    {
        
        
        //        let _annotation = myAnnotation(title:"MyCompany", locationName:"Cross Street", discipline : "One Great Mobile", coordinate: CLLocationCoordinate2DMake(1.2835921, 103.8448966))
        //    myMapView.addAnnotation(_annotation)
        //    photos = [UIImage(named:"1"), UIImage(named:"2")]
        
        let _annotation1 = myAnnotation(title:"L'Escale", locationName:" 60 Boulevard Chanzy, 93100 Montreuil, tél 01 42 87 72 00", discipline : "Restaurant", coordinate: CLLocationCoordinate2DMake(48.8585425, 2.4330908))
        myMapView.addAnnotation(_annotation1)
        myMapView.showAnnotations([_annotation1], animated: true)
        
        let _annotation2 = myAnnotation(title:"La CaVe", locationName:" 45 Rue de Paris, 93100 Montreuil", discipline : "Bistro", coordinate: CLLocationCoordinate2DMake(48.8576, 2.4340799999999945))
        myMapView.addAnnotation(_annotation2)
        myMapView.showAnnotations([_annotation1,_annotation2], animated: true)
        
        
        let _annotation3 = myAnnotation(title:"Le Jardin De Montreuil", locationName:"1 Rue du Sergent Godefroy, 93100 Montreuil", discipline : "Restaurant", coordinate: CLLocationCoordinate2DMake(48.8534, 2.4347999999999956))
        myMapView.addAnnotation(_annotation3)
        myMapView.showAnnotations([_annotation1,_annotation2,_annotation3], animated: true)
        
        let _annotation4 = myAnnotation(title:"Théâtre Berthelot", locationName:" 6 Rue Marcelin Berthelot, 93100 Montreuil", discipline : "Théatre", coordinate: CLLocationCoordinate2DMake(48.8544674, 2.433672))
        myMapView.addAnnotation(_annotation4)
        myMapView.showAnnotations([_annotation1,_annotation2,_annotation3,_annotation4], animated: true)
        
        let _annotation5 = myAnnotation(title:"Stade nautique Maurice Thorez", locationName:" 21 Rue du Colonel Raynal, 93100 Montreuil", discipline : "Stade", coordinate: CLLocationCoordinate2DMake(48.8564, 2.434529999999995))
        myMapView.addAnnotation(_annotation5)
        myMapView.showAnnotations([_annotation1,_annotation2,_annotation3,_annotation4,_annotation5], animated: true)
        
    }
}

extension ViewController: UISearchBarDelegate {
    @IBAction func searchButton(_ sender: Any)
    {
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        present(searchController, animated: true, completion: nil)
        
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar)
    {
        UIApplication.shared.beginIgnoringInteractionEvents()
        
        let activityIndicator = UIActivityIndicatorView()
        activityIndicator.style = UIActivityIndicatorView.Style.gray
        activityIndicator.center = self.view.center
        activityIndicator.hidesWhenStopped = true
        activityIndicator.startAnimating()
        
        self.view.addSubview(activityIndicator)
        
        searchBar.resignFirstResponder()
        dismiss(animated: true, completion: nil)
        
        let searchRequest = MKLocalSearch.Request()
        searchRequest.naturalLanguageQuery = searchBar.text
        
        
        let activeSearch = MKLocalSearch(request: searchRequest)
        
        activeSearch.start
            {
                (response, myError) in
                activityIndicator.stopAnimating()
                UIApplication.shared.endIgnoringInteractionEvents()
                
                if response == nil
                {
                    print (myError)
                } else
                {
                    
                    print(response?.mapItems)
                    
                    let latitude = response?.boundingRegion.center.latitude
                    let longitude = response?.boundingRegion.center.longitude
                    
                    let annotation = MKPointAnnotation()
                    annotation.title = searchBar.text
                    annotation.coordinate = CLLocationCoordinate2DMake(latitude!, longitude!)
                    self.myMapView.addAnnotation(annotation)
                    
                    let cordinate: CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude!, longitude!)
                    let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
                    let region = MKCoordinateRegion(center: cordinate, span: span)
                    
                    self.myMapView.setRegion(region, animated: true)
                    
                }
                
        }
        
    }
}

extension ViewController: MKMapViewDelegate {
    
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
        print("🔶, \(annotation)")
        let bubble = MKMarkerAnnotationView(annotation: annotation, reuseIdentifier: "toto")
        bubble.markerTintColor = .blue
        bubble.glyphText = ""
        return bubble
    }
    
    func mapView(_ mapView: MKMapView, didSelect view: MKAnnotationView) {
        print(view.annotation)
        self.performSegue(withIdentifier: "goToLieu", sender: nil)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToProfile" {
            
            //let vc = segue.destination as! ProfilVC
            // Aucune donnée à passer à l'écran profil
            
        } else if segue.identifier == "goToLieu" {
            let vc = segue.destination as! LieuViewController
            
            vc.monlieu = InfosLieu( nom: "L'Escale",
                                    adresse: "60 Boulevard Chanzy, 93100 Montreuil",
                                    latitude: 48.8585425,
                                    longitude: 2.4330908,
                                    description: "Petit Resto convivial, qualité/prix raisonnable \nCe restaurant offre une cuisine créative.",
                                    note:  "⭐️⭐️⭐️⭐️",
                                    fauteuil: true,
                                    calme: true,
                                    tamisee : true,
                                    securise : true,
                                    photos: [UIImage(named:"1"), UIImage(named:"2"), UIImage(named:"3")])
        }
    }
}
