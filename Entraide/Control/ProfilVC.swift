//
//  profilApplication
//
//  Created by Moh All on 02/07/2019.
//  Copyright © 2019 Mohamed. All rights reserved.
//

import UIKit

class ProfilVC: UIViewController {
    
    @IBOutlet weak var etoiles: UIImageView!
    @IBOutlet weak var nomUser: UITextView!
    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myImageView.layer.cornerRadius = 35.0
        myImageView.layer.masksToBounds = true
        myImageView.layer.borderWidth = 0
    }
    
    @IBAction func importImage(_ sender: Any)
    {
        let image = UIImagePickerController()
        image.delegate = self
        image.sourceType = UIImagePickerController.SourceType.photoLibrary
        image.allowsEditing = false
        
        self.present(image, animated: true)
    }
}


extension ProfilVC: UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
        {
            myImageView.image = image
        }
        else
        {
            // ERROR Message !
        }
        self.dismiss(animated: true, completion: nil)
    }
}


    

//    @IBOutlet weak var nomLieu: UILabel!
//
//    @IBOutlet weak var adresse: UILabel!
//
//    @IBOutlet weak var securise: UIImageView!
//
//    @IBOutlet weak var fauteuil: UIImageView!
//
//    @IBOutlet weak var calme: UIImageView!
//
//    @IBOutlet weak var tamisee: UIImageView!
    
    
    
    
//    override func viewDidLoad()
//    {
//        super.viewDidLoad()
//
////        tableView.dataSource = self
////        tableView.delegate = self
//
//        //pour test
//        monlieu = InfosLieu( nom: "L'Escale",
//                             adresse: "60 Boulevard Chanzy, 93100 Montreuil",
//                             latitude: 48.8585425,
//                             longitude: 2.4330908,
//                             description: "Petit Resto convivial, qualité/prix raisonnable",
//                             note:  "⭐️⭐️⭐️⭐️",
//                             fauteuil: true,
//                             calme: true,
//                             tamisee : true,
//                             securise : true,
//                             photos: [UIImage(named:"1"), UIImage(named:"2"), UIImage(named:"3")])
//        //fin test
//
//        nomLieu.text = monlieu.nom
//        note.text = monlieu.note
//        adresse.text = monlieu.adresse
//        descriptionLieu.text = monlieu.description
//
//        photos.image = monlieu.photos[0]
//        photos.contentMode = .scaleAspectFit
//
//        if monlieu.securise
//        {
//            securise.isHidden = false
//        }
//
//        if monlieu.fauteuil
//        {
//            fauteuil.isHidden = false
//        }
//
//        if monlieu.calme
//        {
//            calme.isHidden = false
//        }
//
//        if monlieu.tamisee
//        {
//            tamisee.isHidden = false
//        }
//
//        //for i in 0...listeAvisStruct.count
//        for i in 1...23
//        {
//            if listeAvisStruct[i].lieu == monlieu.nom
//            {
//                listeCommentaires.append(listeAvisStruct[i])
//            }
//        }
//
//
//
//    } //fin viewDidLoad
//
//} //fin classe
//
//
//// MARK: - fonction pour la TV -
//extension LieuViewController: UITableViewDataSource, UITableViewDelegate
//{
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
//    {
//        return listeCommentaires.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
//    {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "commentaires", for: indexPath) as! HeadlineTableViewCell
//        cell.date.text = listeCommentaires[indexPath.row].date
//        cell.user.text = listeCommentaires[indexPath.row].user
//        cell.noteCommentaire.text = listeCommentaires[indexPath.row].note
//        cell.commentaire.text = listeCommentaires[indexPath.row].commentaire
//        return cell
//    }
//}
//
//
//class HeadlineTableViewCell: UITableViewCell
//{
//    @IBOutlet weak var date: UILabel!
//    @IBOutlet weak var user: UILabel!
//    @IBOutlet weak var noteCommentaire: UILabel!
//    @IBOutlet weak var commentaire: UILabel!}
            
           
                        
                        
                        
                        
                        


