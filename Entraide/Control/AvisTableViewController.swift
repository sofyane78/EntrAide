//
//  AvisTableViewController.swift
//  Entraide
//
//  Created by Dominique PIATON on 02/07/2019.
//  Copyright © 2019 Sofyane Oulefki. All rights reserved.
//

import UIKit

class AvisTableViewController: UITableViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    // MARK: outlets
    //    @IBOutlet weak var logoSecurise: UILabel!
    // initialiser les 4 icones en mettant des images
        
    @IBOutlet weak var userNameTextField: UITextField!

    @IBOutlet weak var doneButton: UIBarButtonItem!

    @IBOutlet weak var maPhoto: UIImageView!
    
    @IBOutlet weak var etoile1: UIButton!
    @IBOutlet weak var etoile2: UIButton!
    @IBOutlet weak var etoile3: UIButton!
    @IBOutlet weak var etoile4: UIButton!
    
    @IBOutlet weak var CommentaireTextView: UITextView!
    
    var monLieu: InfosLieu!
    var monAvis = AvisStruct(lieu: "L'Escale", user: "", commentaire: "", date: "", note: "", fauteuil: false, calme: false, tamisee: false, securise: false, photo: nil )

    // MARK: CREATION AVIS
   // creer une instance monAvis liée à un lieu :
    //il sera renvoyé d'une part au profil de l'utilisateur et d'autre part au lieu concerné (page precedente)
    func creerMonAvis() {
        // UTILISATEUR :
        // saisir le no ou le pseudo, sinon sortir de la fonction
        guard let userName = userNameTextField.text else { return }
        monAvis.user = userName
        
        // DATE :
        let today = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "dd.MM.yyyy"
        let maDate = formatter.string(from: today as Date)
        // print(maDate)
        monAvis.date = maDate
        
        
        // LIEU :
        // le lieu n'est pas modifié, il vient de la page precedente
        
        // PHOTO
        // ajouter la photo
        
        //COMMENTAIRE
        // ajouter un commentaire
       // monAvis.commentaire =
        guard let monCommentaire = CommentaireTextView.text else {return}
            monAvis.commentaire = monCommentaire
        
        print(monAvis)
        
    }
    
//    func PreendreMaPhoto(){
//        UIImagePickerController
//    }
    

    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        //navigationItem.title = lieu.nom
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // VALIDER l'ajout d'un avis
    @IBAction func validerAvis(_ sender: Any)
    {
        creerMonAvis()
        navigationController?.popViewController(animated: true)
        //Ajouter les donnée dans listeAvisStruct
    }
    // AJOUTER une photo déjà prise (dans la bibliothèque de photo)
//    @IBAction func ajouterPhoto(_ sender: UIButton)
//    {
//
//    }
    // PRENDRE une photo avec l'apareil photo et l'utiliser
//    @IBAction func prendrePhoto(_ sender: UIButton)
//    {
//
//    }
    // MARK: CRITERES
    // cocher ou decocher chacun des 4 critères - fonctions didSelectRowAt et didDeselectRowAt

    override func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        if indexPath.section == 2
        {
            return true
        } else
        {
            return false
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
//        print(indexPath, "selectionné")
        switch indexPath.row
        {
        case 0:
            monAvis.securise = true
        case 1:
            monAvis.fauteuil = true
        case 2:
            monAvis.calme = true
        case 3:
            monAvis.tamisee = true
        default:
            return
        }
    }
    
    override func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath)
    {
        tableView.cellForRow(at: indexPath)?.accessoryType = .none
//        print(indexPath, "Dé-selectionné")
        switch indexPath.row
        {
        case 0:
            monAvis.securise = false
        case 1:
            monAvis.fauteuil = false
        case 2:
            monAvis.calme = false
        case 3:
            monAvis.tamisee = false
        default:
            return
        }

    }
    
    // MARK: - ETOILES -
    @IBAction func etoile1Clicked(_ sender: UIButton)
    {
        if etoile1.isSelected == false
        {
            monAvis.note = "⭐️"
            etoile1.isSelected = true
        } else
        {
            monAvis.note = ""
            etoile1.isSelected = false
            etoile2.isSelected = false
            etoile3.isSelected = false
            etoile4.isSelected = false
        }
//        print(monAvis.note)
    }
    
    @IBAction func etoile2Clicked(_ sender: UIButton)
    {
        if etoile2.isSelected == false
        {
            monAvis.note = "⭐️⭐️"
            etoile1.isSelected = true
            etoile2.isSelected = true
        } else
        {
            monAvis.note = "⭐️"
            etoile2.isSelected = false
            etoile3.isSelected = false
            etoile4.isSelected = false
        }
//        print(monAvis.note)
    }

    @IBAction func etoile3Clicked(_ sender: UIButton)
    {
        if etoile3.isSelected == false
        {
            monAvis.note = "⭐️⭐️⭐️"
            etoile1.isSelected = true
            etoile2.isSelected = true
            etoile3.isSelected = true
        } else
        {
            monAvis.note = "⭐️⭐️"
            etoile3.isSelected = false
            etoile4.isSelected = false
        }
//        print(monAvis.note)

    }

    @IBAction func etoile4Clicked(_ sender: UIButton)
    {
        if etoile4.isSelected == false
        {
            monAvis.note = "⭐️⭐️⭐️⭐️"
            etoile1.isSelected = true
            etoile2.isSelected = true
            etoile3.isSelected = true
            etoile4.isSelected = true
        } else
        {
            monAvis.note = "⭐️⭐️⭐️"
            etoile4.isSelected = false
            
        }
//        print(monAvis.note)

    }

    
    
}

    // MARK: - Table view data source
// non necessaire de donner le nombre de section et de rows in section car la Table view est STATIQUE
    
//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }
//
//    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete implementation, return the number of rows
//        return 0
//    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
