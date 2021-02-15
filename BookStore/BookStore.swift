//
//  BookStore.swift
//  BookStore
//
//  Created by Heri Susanto on 15/02/21.
//  Copyright © 2021 Heri Susanto. All rights reserved.
//

import Foundation

var books = [
    ["title":"Swift for Absolute Beginners",
     "author":"Bennet and Less",
     "genre":"Science",
     "price":"100000",
     "description":"iOS Programming madd easy."],
    ["title":"Beginning iPhone Development with Swift 5",
     "author":"Wallace Wang",
     "genre":"Science",
     "price":"100000",
     "description":"iOS Programming madd easy."],
    ["title":"Pro iPhone Development with Swift 5",
     "author":"Wallace Wang",
     "genre":"Science",
     "price":"100000",
     "description":"iOS Programming madd easy."],
    ["title":"Extrem Ownership",
     "author":"John Doe",
     "genre":"Science",
     "price":"100000",
     "description":"Lead to win"]
]
class BookStore {
    var bookList:[Book] = []
    
    init (){
        seeder(books:books)
    }
    
    func seeder(books:[[String:String]]) {
        for book in books {
            let newBook = Book()
            newBook.title = book["title"]!
            newBook.author = book["author"]!
            newBook.genre = book["genre"]!
            newBook.price = book["price"]!
            newBook.description = book["description"]!
            bookList.append(newBook)
        }
    }
}
