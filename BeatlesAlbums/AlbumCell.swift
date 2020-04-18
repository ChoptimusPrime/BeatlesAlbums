//
//  AlbumCell.swift
//  BeatlesAlbums
//
//  Created by Jonathan Compton on 4/18/20.
//  Copyright © 2020 Jonathan Compton. All rights reserved.
//

import UIKit

class AlbumCell: UITableViewCell {
    
    var albumImageView = UIImageView()
    var titleLabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(albumImageView)
        addSubview(titleLabel)
        setImageView()
        setTitleLabel()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setImageView() {
        albumImageView.translatesAutoresizingMaskIntoConstraints = false
        albumImageView.topAnchor.constraint(equalTo: topAnchor, constant: 12).isActive = true
        albumImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        albumImageView.heightAnchor.constraint(equalToConstant: 140).isActive = true
        albumImageView.widthAnchor.constraint(equalToConstant: 140).isActive = true
        
    }
    
    func setTitleLabel() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        titleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12).isActive = true
        titleLabel.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        titleLabel.numberOfLines = 0
        titleLabel.adjustsFontSizeToFitWidth = true
    }
    
    func configureCell(album: Album) {
        titleLabel.text = album.title
        if let img = album.image {
            albumImageView.image = img
        }
    }

}
