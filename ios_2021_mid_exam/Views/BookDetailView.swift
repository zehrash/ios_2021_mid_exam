//
//  BookDetailView.swift
//  ios_2021_mid_exam
//
//  Created by ZehraIliyaz  on 7.01.22.
//

import Foundation
import UIKit

class BookDetailView: UIView {
    
    var title: UILabel!
    var author: UILabel!
    var imageView: UIImageView!
    var descriptions: UILabel!
    var rating: UILabel!
    
    init(book: Book) {
        super.init(frame: .zero)
        createBookForm(book: book)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func createBookForm(book: Book) {
        backgroundColor = .white
        
        title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.text = book.title
        addSubview(title)
        
        let image = UIImage(named: book.photo)
        self.imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        addSubview(imageView)
        
        author = UILabel()
        author.translatesAutoresizingMaskIntoConstraints = false
        author.text = book.author
        addSubview(author)
        
        descriptions = UILabel()
        descriptions.translatesAutoresizingMaskIntoConstraints = false
        descriptions.text = book.description
        addSubview(descriptions)
        
        rating = UILabel()
        rating.translatesAutoresizingMaskIntoConstraints = false
        rating.text = book.rating.description
        addSubview(rating)
    
        NSLayoutConstraint.activate([
            title.topAnchor.constraint(equalTo: topAnchor),
            title.leadingAnchor.constraint(equalTo: leadingAnchor),
            title.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.topAnchor.constraint(equalTo: title.bottomAnchor),
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.widthAnchor.constraint(equalTo: widthAnchor),
            imageView.heightAnchor.constraint(equalTo: heightAnchor),

            //TODO: add all constraints for views; no time now
        ])
        
    }
}
