//
//  DetailModel.swift
//  Projek 1 AM
//
//  Created by IT-Mobile-Dev on 13/03/21.
//

import Foundation

public struct DetailModelWrapper: Decodable {
    let name: String?
    let imagePath: String?
    let description: String?
    
    internal enum CodingKeys: String, CodingKey{
        case name = "name"
        case imagePath = "background_image"
        case description = "description"
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        self.name = try values.decodeIfPresent(String.self, forKey: .name)
        self.imagePath = try values.decodeIfPresent(String.self, forKey: .imagePath)
        self.description = try values.decodeIfPresent(String.self, forKey: .description)
    }
}
