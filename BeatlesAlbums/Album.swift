//
//  Album.swift
//  BeatlesAlbums
//
//  Created by Jonathan Compton on 4/18/20.
//  Copyright © 2020 Jonathan Compton. All rights reserved.
//

import Foundation
import UIKit

struct Album {
    let title: String
    var image: UIImage?
    
    init(title: String, imageName: String?) {
        self.title = title
        if let imgName = imageName {
            if let img = UIImage(named: imgName) {
                self.image = img
            }
        } else {
            self.image = nil
        }
    }
}
