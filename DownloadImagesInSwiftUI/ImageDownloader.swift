//
//  ImageDownloader.swift
//  DownloadImagesInSwiftUI
//
//  Created by ramil on 29/09/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import Foundation

class ImageDownloader: ObservableObject {
    
    @Published var downloadedData: Data? = nil
    
    func downloadImage(url: String) {
        
        guard let imageURL = URL(string: url) else {
            fatalError("Invalid URL")
        }
        
        DispatchQueue.global().async {
            
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.async {
                self.downloadedData = data
            }
        }
    }
}
