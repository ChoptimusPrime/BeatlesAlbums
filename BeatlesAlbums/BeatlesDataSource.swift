//
//  BeatlesDataSource.swift
//  TableViewDemo
//
//  Created by Jonathan Compton on 4/18/20.
//  Copyright © 2020 Jonathan Compton. All rights reserved.
//

import Foundation

class BeatlesDataSource {
    private init(){
        loadData()
    }
    
    private var albumData = [Album]()
    
    static let shared = BeatlesDataSource()
    
    private func loadData() {
        let pathStub = "beatlesImages/beatles"
        albumData = [
            Album(title: "Sgt. Peppers Lonely Hearts Club Band", imageName: "\(pathStub)01.jpg"),
            Album(title: "Revolver", imageName: "\(pathStub)02.jpg"),
            Album(title: "With The Beatles U.S.", imageName: "\(pathStub)03.jpg"),
            Album(title: "With The Beatles U.K.", imageName: "\(pathStub)04.png")
        ]
        
    }
    
    internal func getAlbumData() -> [Album] {
        return albumData
    }
    
    internal func numberOfAlbums() -> Int {
        return albumData.count
    }
    
    internal func getAlbum(atIndexPath indexPath: IndexPath) -> Album {
        return albumData[indexPath.row]
    }
    
    internal func deleteAlbum(indexPath: IndexPath) {
        albumData.remove(at: indexPath.row)
    }
    
    internal func insertAlbum(album: Album, indexPath: IndexPath) {
        albumData.insert(album, at: indexPath.row)
    }
}
