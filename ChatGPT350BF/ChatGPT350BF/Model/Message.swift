//
//  Message.swift
//  ChatGPT350BF
//
//  Created by Caio Fabrini on 30/05/23.
//

import Foundation

enum TypeMessage {
    case user
    case chatGPT
}

struct Message {
    var message: String
    var typeMessage: TypeMessage
}
