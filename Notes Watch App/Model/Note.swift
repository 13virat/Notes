//
//  Note.swift
//  Notes Watch App
//
//  Created by Mac pro on 03/09/25.
//

import Foundation

struct Note : Identifiable, Codable {
    let id: UUID
    let text: String
}
