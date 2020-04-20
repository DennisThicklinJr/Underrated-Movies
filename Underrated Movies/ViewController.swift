//
//  ViewController.swift
//  Underrated Movies
//
//  Created by Dennis Thicklin on 4/19/20.
//  Copyright © 2020 Dennis Thicklin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var movieDisplay: UIImageView!
    @IBOutlet weak var movieInfo: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        movieDisplay.image = #imageLiteral(resourceName: "whichone")
    
    }

    @IBAction func showNewMovie(_ sender: UIButton) {
        let movies = [#imageLiteral(resourceName: "sinbad"), #imageLiteral(resourceName: "princeofegypt"), #imageLiteral(resourceName: "irongiant"), #imageLiteral(resourceName: "treasureplanet"), #imageLiteral(resourceName: "eldorado"), #imageLiteral(resourceName: "atlantis")]
        let movieDesc = ["Sinbad is an awesome Dreamworks movie.",
        "The Prince of Egypt is a classic (used to watch on my VCR)",
        "I never owned this movie, but I saw online, it's lit",
        "My favorite animated movie. I've watched idk how many times.",
        "Had this movie on vhs, amazing.", "Had this on VHS. It's a super interesting movie."]
        
        var randomNumber = Int(arc4random_uniform(UInt32(movies.count)))
        
        UIView.animate(withDuration: 0.5, delay: 0.5, animations: {
            self.movieDisplay.alpha = 0.0
            self.movieDisplay.alpha = 1.0
        }, completion: nil)
        
        movieDisplay.image = movies[randomNumber]
        movieInfo.text = movieDesc[randomNumber]
    }
    
}

