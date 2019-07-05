
import MapKit
import CoreLocation

class myAnnotation : NSObject, MKAnnotation {
    
    let title: String?
    let locationName : String
    let discipline : String
    let coordinate: CLLocationCoordinate2D
    
    init(title: String, locationName : String, discipline: String, coordinate: CLLocationCoordinate2D) {
        
        self.title = title
        self.locationName = locationName
        self.discipline = discipline
        self.coordinate = coordinate
        
        super.init()
    }
    
    var subtitle: String?
    {
        return locationName
    }
    var markerTintColor: UIColor{
        switch discipline{
        case "A" :
            return.red
        case "B":
            return.blue
        default :
            return.black
        }
        // ajoute autant que tu veux de A à Z
    }
    
    
    var imageName : String?{
        
        if discipline == "One GREAT MOBILE" {return "location"}
        return "location"
    }
    
    
}




