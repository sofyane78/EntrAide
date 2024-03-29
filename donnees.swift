//
//  donnees.swift
//  Entraide
//
//  Created by Natacha Bussard on 28/06/2019.
//  Copyright © 2019 Sofyane Oulefki. All rights reserved.
//

import CoreLocation
import Foundation
import UIKit

///////////////
/// LIEUX ////
//////////////

struct InfosLieu
{
    var nom: String
    var adresse: String
    var latitude: Double
    var longitude: Double
    var description: String
    var note: String
    var fauteuil: Bool
    var calme: Bool
    var tamisee: Bool
    var securise : Bool
    var photos: [UIImage?]  = []
    
    func getGPS() -> CLLocationCoordinate2D
    {
        return CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}

var lieux = [
    InfosLieu( nom: "L'Escale",
                       adresse: "60 Boulevard Chanzy, 93100 Montreuil, tél 01 42 87 72 00",
                       latitude: 48.8585425,
                       longitude: 2.4330908,
                       description: "Petit Resto convivial, qualité/prix raisonnable \nCe restaurant offre une cuisine créative.",
                       note:  "⭐️⭐️⭐️⭐️",
                       fauteuil: true,
                       calme: true,
                       tamisee : true,
                       securise : true,
                       photos: [UIImage(named:"1"), UIImage(named:"2"), UIImage(named:"3")]),

    InfosLieu( nom: "La CaVe",
                       adresse: "45 Rue de Paris, 93100 Montreuil, tél 01 42 87 09 48",
                       latitude: 48.8576,
                       longitude: 2.4340799999999945,
                       description: "Établissement ouvert: 10:30 – 00:00/nCe bistro avec terrasse dans les arbres offre une cuisine créative, des brunchs et des rencontres vigneronnes.",
                       note:  "⭐️⭐️⭐️",
                       fauteuil: true,
                       calme: true,
                       tamisee : false,
                       securise : true,
                       photos: [UIImage(named:"4"),  UIImage(named:"5")]),

    InfosLieu( nom: "Le Jardin De Montreuil",
                       adresse: "1 Rue du Sergent Godefroy, 93100 Montreuil",
                       latitude: 48.8534,
                       longitude: 2.4347999999999956,
                       description: "Ce restaurant sert cuisine inventive et brunch dans un décor de bistrot rétro avec cheminée et patio ombragé.",
                       note:  "",
                       fauteuil: true,
                       calme: true,
                       tamisee : true,
                       securise : true,
                       photos: [UIImage(named:"6")]),


    InfosLieu( nom: "Théâtre Berthelot",
                       adresse: "6 Rue Marcelin Berthelot, 93100 Montreuil",
                       latitude: 48.862725,
                       longitude: 2.287592000000018,
                       description: "Ce théâtre moderne de 210 places accueille des spectacles divers, des séances jeune public et des festivals.",
                       note:  "⭐️⭐️",
                       fauteuil: true,
                       calme: true,
                       tamisee : true,
                       securise : true,
                       photos: [UIImage(named:"7")]),

    InfosLieu( nom: "Théâtre Atelier Montreuil",
                       adresse: "43 Rue du Sergent Bobillot, 93100 Montreuil",
                       latitude: 48.8544674,
                       longitude: 2.433672,
                       description: "Salle de spectacles et cours de théâtre",
                       note:  "⭐️⭐️⭐️⭐️",
                       fauteuil: true,
                       calme: true,
                       tamisee : true,
                       securise : true,
                       photos: [UIImage(named:"9")]),


    InfosLieu( nom: "Stade nautique Maurice Thorez",
                       adresse: "21 Rue du Colonel Raynal, 93100 Montreuil",
                       latitude: 48.8564,
                       longitude: 2.434529999999995,
                       description: "Piscine enfant de 25 m, et piscine olympique de 50 m",
                       note:  "⭐️⭐️⭐️",
                       fauteuil: true,
                       calme: true,
                       tamisee : true,
                       securise : true,
                       photos: [UIImage(named:"8")]),

    InfosLieu( nom: "Parc départemental Jean-Moulin - Les Guilands",
                       adresse: "Rue de l'Épine Prolongée, 93100 Montreuil",
                       latitude: 48.8633876,
                       longitude: 2.4274962,
                       description: "Un grand parc au porte de Paris. De beaux points de vue. Très arboré avec des espaces naturels préservés. Plusieurs aires de jeux bien équipées. Accessible en métro et bus. De grands espaces verts pour jouer ou s'asseoir.",
                       note:  "⭐️⭐️⭐️⭐️",
                       fauteuil: true,
                       calme: true,
                       tamisee : true,
                       securise : true,
                       photos: [UIImage(named:"10")]),

    InfosLieu( nom: "L'Île de Robinson",
                       adresse: "50 Rue du Sergent Bobillot, 93100 Montreuil",
                       latitude: 48.8550895,
                       longitude: 2.4339977,
                       description: "Parc d'intérieur pour les enfants",
                       note:  "⭐️⭐️",
                       fauteuil: true,
                       calme: true,
                       tamisee : true,
                       securise : true,
                       photos: [UIImage(named:"11")]),

    InfosLieu( nom: "O'Tacos Chatelet",
                       adresse: "5 Rue des Innocents, 75001 Paris",
                       latitude: 48.8604,
                       longitude: 2.3478599999999687,
                       description: "Restaurant de tacos",
                       note:  "⭐️⭐️⭐️⭐️",
                       fauteuil: true,
                       calme: true,
                       tamisee : true,
                       securise : true,
                       photos: [UIImage(named:"12")]),

    InfosLieu( nom: "Théâtre du Châtelet",
                        adresse: "2 Rue Edouard Colonne, 75001 Paris",
                        latitude: 48.8578511,
                        longitude: 2.3456255,
                        description: "Récitals, comédies musicales et concerts variés dans une somptueuse salle de 1862 avec coupole et dorures.",
                        note:  "⭐️⭐️⭐️⭐️",
                        fauteuil: true,
                        calme: true,
                        tamisee : true,
                        securise : true,
                        photos: [UIImage(named:"13")]),

    InfosLieu( nom: "Tour Saint-Jacques",
                        adresse: "Square de la Tour Saint-Jacques, 75004 Paris",
                        latitude: 48.8578831,
                        longitude: 2.3487609,
                        description: "Unique partie restante d'une église du XVIe siècle détruite pendant la Révolution française.",
                        note:  "⭐️⭐️⭐️⭐️",
                        fauteuil: true,
                        calme: true,
                        tamisee : true,
                        securise : true,
                        photos: [UIImage(named:"14")])
]

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
/// AvisStruct ////
//////////////

struct AvisStruct
{
    var lieu: String
    var user: String
    var commentaire: String
    var date: String
    var note: String
    var fauteuil: Bool
    var calme: Bool
    var tamisee: Bool
    var securise : Bool
    var photo: UIImage?
}

var listeAvisStruct = [
        AvisStruct(lieu: "L'Escale",
         user: "Khalid",
         commentaire:"Mention spéciale pour l'accessibilité des personnes à mobilité réduite. Mais aussi pour les soirées peuplées par une clientèle d'habitués qui rassemble des personnes de tous horizons sociaux. De temps à autres des concerts le dimanche après midi ou en soirée",
         date: "06.07.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Khalid",
         commentaire:"Petit Resto convivial, qualité/prix raisonnable et accessible",
         date: "06.07.2019",
         note: "⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Felix",
         commentaire:"Représente vraiment la croix de chavaux",
         date: "05.07.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Bee",
         commentaire:"Bar sympa, ambiance cool. Parfait pour prendre des verres entre amis",
         date: "04.07.2019",
         note: "⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Agnès",
         commentaire:"Je viens de découvrir ce lieu avec des amis. Je trouve super sympa.  Le patron Driss extra. Je donne 5 étoiles. Merci à tous.",
         date: "04.07.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Alisson",
         commentaire:"On y mange très bien à un prix raisonnable et on y est toujours bien reçu.",
         date: "04.07.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Boris",
         commentaire:"Lieu simple et chaleureux. Très sympa le dimanche midi. Concerts les dimanches en début d'après-midi.",
         date: "03.07.2019",
         note: "",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "José",
         commentaire:"Bon petit restaurant sans prétention. Propre et ambiance détendue.",
         date: "03.07.2019",
         note: "⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Paul",
         commentaire:"Lieu convivial, cuisine traditionnelle et accueil chaleureux, continuez dans cette voie messieurs",
         date: "03.07.2019",
         note: "⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Emmanuelle",
         commentaire:"Bien situé. Bonne ambiance. De la Superbock à la pression (il n'y en a pas partout). Des concerts, régulièrement. Et une magnifique photo de Schultz (entre autres) !",
         date: "02.07.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu:  "L'Escale",
         user: "Jacques",
         commentaire:"Concerts les dimanches en début d'après-midi.",
         date: "02.07.2019",
         note: "⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Valentin",
         commentaire:"très sympa",
         date: "02.07.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Frank",
         commentaire:"Bon accueil",
         date: "01.07.2019",
         note: "⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Sara",
         commentaire:"Lieu simple et chaleureux",
         date: "01.07.2019",
         note: "⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Marie",
         commentaire:"Très sympa le dimanche midi.",
         date: "01.07.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Sophie",
         commentaire:"Bien",
         date: "30.06.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Marc",
         commentaire:"Très bonne cuisine",
         date: "30.06.2019",
         note: "⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Thomas",
         commentaire:"Bon accueil",
         date: "30.06.2019",
         note: "⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "L'Escale",
         user: "Yoshi",
         commentaire:"Sympa",
         date: "29.06.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "La CaVe",
         user: "j'ai mangé dans ce restaurant hier soir et franchement, j'ai passé un super moment! Repas copieux et alléchant, personnel agréable et très avenant. Franchement, je vous le conseille vivement. Vous vivrez un excellent moment convivial et vous y reviendrez Merci encore à l'intégralité de l'équipe pour leur amabilité, leurs conseils, leur disponibilité. Vous avez embellit ma soirée qui était déjà très belle malgré le temps pluvieux.",
         commentaire:"Sympa",
         date: "07.07.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: false,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "La CaVe",
         user: "Eric",
         commentaire:"Excellent restau avec une très belle terrasse, caché derrière une cave à vin. Bel accueil, bon produits, prix raisonnable. A découvrir !",
         date: "06.07.2019",
         note: "⭐️⭐️⭐️",
         fauteuil: true,
         calme: false,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "La CaVe",
         user: "Khalid",
         commentaire:"Lieu branché, cadre atypique dans l'arrière boutique d'un cAvisStructte, j'ai trouvé la carte un peu surfaite pour les prix, c'est très bon, mais cela manque un peu de finesse a mon humble AvisStruct. A recommander tout de même",
         date: "05.07.2019",
         note: "⭐️⭐️",
         fauteuil: true,
         calme: false,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "La CaVe",
         user: "Eric",
         commentaire:"Excellent restau avec une très belle terrasse, caché derrière une cave à vin. Bel accueil, bon produits, prix raisonnable. A découvrir !",
         date: "04.07.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: false,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "Théâtre Berthelot",
         user: "Eric",
         commentaire:"Super théâtre j'y joue en tant que comédien les lignes sont petites mais très propre idem pour les toilettes publique et comédien. J'y suis aller en tant que spectateur aussi et c'est vraiment un bon endroit pour une pièce de théâtre",
         date: "30.06.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
    
    AvisStruct(lieu: "Théâtre Berthelot",
         user: "Khalid",
         commentaire:"Ce n est pas rien que d avoir un théâtre de quartiers... Chanceux les habitants de Montreuil !",
         date: "27.06.2019",
         note: "⭐️⭐️⭐️⭐️",
         fauteuil: true,
         calme: true,
         tamisee: true,
         securise: true,
         photo: nil),
]
