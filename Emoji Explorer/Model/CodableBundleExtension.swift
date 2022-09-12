//
//  Created by Robert Petras
//  SwiftUI Masterclass ♥ Better Apps. Less Code.
//  https://swiftuimasterclass.com 
//

import Foundation

extension Bundle {
  func decode2<T: Codable>(_ filename: String) -> T {
    // 1. Locate the json file
    guard let url = self.url(forResource: filename, withExtension: nil) else {
      fatalError("Failed to locate \(filename) in bundle.")
    }
    
    // 2. Create a property for the data
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(filename) from bundle.")
    }
    
    // 3. Create a decoder
    let decoder = JSONDecoder()
    
    // 4. Create a property for the decoded data
    guard let loaded = try? decoder.decode(T.self, from: data) else {
      fatalError("Failed to decode \(filename) from bundle.")
    }
    
    // 5. Return the ready-to-use data
    return loaded
  }
}

