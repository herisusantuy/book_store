//
//  DetailViewController.swift
//  BookStore
//
//  Created by Heri Susanto on 15/02/21.
//  Copyright © 2021 Heri Susanto. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    


    func configureView() {
        if let myBook = detailItem {
            titleLabel.text = myBook.title
            authorLabel.text = myBook.author
            genreLabel.text = myBook.genre
            priceLabel.text = myBook.price
            descriptionTextView.text = myBook.description
        }
    }

    override func viewDidLoad() {
        configureView()
    }

    var detailItem: Book? {
        didSet {
            // Update the view.
//            configureView()
        }
    }


}

