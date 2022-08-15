//
//  News.swift
//  NewsDetailView
//
//  Created by Hassan Sohail Dar on 15/8/2022.
//

import Foundation

struct News {
    var heading: String
    var details: String
    var image: String
    
    static let sampleNews  =
    [
        News(heading: "Independance Day", details: """
People are silhouetted as fireworks explode to celebrate on the eve
 of Pakistan's 75th Independence Day, in Peshawar, Pakistan, August
 13, 2022.
""",
image: "None"),
        News(heading: "Australia Day", details: """
Men and women, young and old are divided about the upcoming Australian Day public holiday according to a survey conducted less than a week before its spot on the calendar.

Australia has seven national public holidays, four of them between December 25 and January 26.

The last, officially called Australia Day, is held on the date British Royal Navy vessels raised a Union Jack at Sydney Cove, called Warrane by the Aboriginal people who fished and lived there.
""", image: "None"),
        News(heading: "MyDay", details: """
It is a day that i know will come, it is a day i know will come.
I lived, i cried, i wanted to give it all back.
Alas! He made it clear that it is destiny and hes got my back.
I cannot lie, I look forward to it.
Whenever it happens, i am game and i will do it.
"""
, image: "none")
    ]
}


extension News {
    init() {
        self.heading = ""
        self.details = ""
        self.image = ""
    }
}
