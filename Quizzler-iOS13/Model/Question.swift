//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by paritosh on 26/03/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    let Text : String
    let answer : String
    init(_ q:String,_ a:String  )
    {
        Text = q
        answer = a
    }
}
