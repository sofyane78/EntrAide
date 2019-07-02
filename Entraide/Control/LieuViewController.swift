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
    @IBOutlet weak var nomLieu: UILabel!
    @IBOutlet weak var note: UILabel!
    @IBOutlet weak var adresse: UILabel!
    @IBOutlet weak var descriptionLieu: UITextView!
    @IBOutlet weak var criteres: UICollectionView!
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
