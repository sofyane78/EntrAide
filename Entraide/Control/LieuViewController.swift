//
//  LieuViewController.swift
//  Entraide
//
//  Created by Natacha Bussard on 01/07/2019.
//  Copyright © 2019 Sofyane Oulefki. All rights reserved.
//

import UIKit

class LieuViewController: UIViewController
{
    @IBOutlet weak var photos: UIImageView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var nomLieu: UILabel!
    @IBOutlet weak var note: UILabel!
    @IBOutlet weak var adresse: UILabel!
    @IBOutlet weak var descriptionLieu: UITextView!
    @IBOutlet weak var securise: UIImageView!
    @IBOutlet weak var fauteuil: UIImageView!
    @IBOutlet weak var calme: UIImageView!
    @IBOutlet weak var tamisee: UIImageView!
    
    var monlieu: InfosLieu!
    var listeCommentaires: [AvisStruct] = []
    
    override func viewDidLoad()
    {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
                
        nomLieu.text = monlieu.nom
        note.text = monlieu.note
        adresse.text = monlieu.adresse
        descriptionLieu.text = monlieu.description
        
        photos.image = monlieu.photos[0]
        photos.contentMode = .scaleAspectFit
        
        if monlieu.securise
        {
            securise.isHidden = false
        }
        
        if monlieu.fauteuil
        {
            fauteuil.isHidden = false
        }
        
        if monlieu.calme
        {
            calme.isHidden = false
        }
        
        if monlieu.tamisee
        {
            tamisee.isHidden = false
        }
        
        //for i in 0...listeAvisStruct.count
        for i in 1...23
        {
            if listeAvisStruct[i].lieu == monlieu.nom
            {
                listeCommentaires.append(listeAvisStruct[i])
            }
        }
        
    } //fin viewDidLoad
    
} //fin classe


// MARK: - fonction pour la TV -
extension LieuViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return listeCommentaires.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "commentaires", for: indexPath) as! HeadlineTableViewCell
        cell.date.text = listeCommentaires[indexPath.row].date
        cell.user.text = listeCommentaires[indexPath.row].user
        cell.noteCommentaire.text = listeCommentaires[indexPath.row].note
        cell.commentaire.text = listeCommentaires[indexPath.row].commentaire
        //cell.user.select(self.performSegue(withIdentifier: "profil", sender: nil))
        return cell
    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
//    {
//        if segue.identifier == "avis"
//        {
//            
//        } else if segue.identifier == "profil"
//        {
//            var vc = segue.destination as! LieuViewController
//        }
//    }
}

class HeadlineTableViewCell: UITableViewCell
{
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var user: UILabel!
    @IBOutlet weak var noteCommentaire: UILabel!
    @IBOutlet weak var commentaire: UILabel!
}
