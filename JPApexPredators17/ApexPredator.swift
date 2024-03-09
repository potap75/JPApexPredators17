//
//  ApexPredator.swift
//  JPApexPredators17
//
//  Created by Roman Potapov on 3/8/24.
//

import Foundation


struct ApexPredator: Decodable {
    
    let id: Int
    let name: String
    let type: String
    let latitude: Double
    let longitude: Double
    let movies: [String]
    let movieScenes: [MovieScene]
    let link: String
        
    struct MovieScene: Decodable {
        let id: Int
        let movie: String
        let sceneDescription: String
    }
    
    
}
