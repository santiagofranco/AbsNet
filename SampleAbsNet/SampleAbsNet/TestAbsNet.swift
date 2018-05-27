//
//  TestAbsNet.swift
//  SampleAbsNet
//
//  Created by Santiago Franco García on 23/5/18.
//  Copyright © 2018 Santiago Franco. All rights reserved.
//

import Foundation
import AbsNet

class Test: ApiUseCase<TestInput, TestOutput> {
    
    override func endpoint(with input: TestInput?) -> String {
        return "search/anime/\(input!.exampleVar)/1"
    }    
}

struct TestInput: Codable {
    let exampleVar: String
    
    enum CodingKeys: String, CodingKey {
        case exampleVar = "example_key"
    }
}

struct TestOutput: Codable {
    let result: [Anime]
}

struct Anime: Codable {
    
    let id: Int
    let title: String
    let image: String
    
    enum CodingKeys: String, CodingKey {
        case id = "mal_id"
        case title
        case image = "image_url"
    }
    
}
