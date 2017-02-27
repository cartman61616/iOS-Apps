//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Jonathan on 2/26/17.
//  Copyright © 2017 Jonathan. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    @IBOutlet weak var songTitleLbl: UILabel!
    private var _selectedSong:String!
    
    var selectedSong: String {
        get {
            return _selectedSong
        } set {
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        songTitleLbl.text = _selectedSong
    }


}
