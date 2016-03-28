//
//  DetailedVC.swift
//  MidTerm
//
//  Created by Ted on 3/28/16.
//  Copyright © 2016 Ted.Company. All rights reserved.
//

import UIKit

class DetailedVC: UIViewController {
    @IBOutlet weak var movieImage: UIImageView!
    
    @IBOutlet weak var movieDetail: UITextView!
    var movieIndex: Int = 0
    @IBOutlet weak var movieName: UILabel!

    var movieHere: AllMovies = AllMovies()

    
    
    override func viewDidLoad() {

    }
    
    override func viewWillAppear(animated: Bool) {
        self.movieImage.image = UIImage(named: movieHere.arrayMovie[movieIndex].coverImage!)
        self.movieDetail.text = movieHere.arrayMovie[movieIndex].movieDetail
        self.movieName.text = movieHere.arrayMovie[movieIndex].movieName
    }

    
}
