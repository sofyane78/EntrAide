//
//  LieuViewController.swift
//  Entraide
//
//  Created by Natacha Bussard on 01/07/2019.
//  Copyright © 2019 Sofyane Oulefki. All rights reserved.
//

import UIKit

class LieuViewController: UIViewController, UITableViewDataSource, UITableViewDelegate
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
    @IBOutlet weak var lieu: UIImageView!
    
    
    var i = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        //pour test
        let tempLieu = "L'Escale"
        //
        
        while lieux[i].nom != tempLieu
        {
            i += 1
        }

        nomLieu.text = tempLieu
        note.text = lieux[i].note
        adresse.text = lieux[i].adresse
        descriptionLieu.text = lieux[i].description
        
        photos.image = lieux[i].photos[0]
        photos.contentMode = .scaleAspectFit

        if lieux[i].securise
        {
            securise.isHidden = false
        }
        
        if lieux[i].calme
        {
            calme.isHidden = false
        }
        
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 10
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "commentaires", for: indexPath)

        /*
        var formateur = "Formateur"
        if !users[indexPath.row].isTrainer
        {
            formateur = "Apprenant"
        }
        
        cell.textLabel?.text = formateur
        cell.detailTextLabel?.text = "\(users[indexPath.row].firstName) \(users[indexPath.row].lastName), \(users[indexPath.row].age) ans"
        
        let list = [0, 1, 2, 3, 4, 5, 6, 7, 8]
        let choice = list.randomElement()!
        
        let image = UIImage(named: String(choice))
        cell.imageView?.image = image
        */
        return cell
 
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
