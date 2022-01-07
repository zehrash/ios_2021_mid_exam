//
//  BookDetailViewController.swift
//  ios_2021_mid_exam
//
//  Created by ZehraIliyaz  on 7.01.22.
//

import Foundation
import UIKit


class BookDetailViewController: UIViewController {
    
    var downloadButton: UIButton!
    var favouritesButton: UIButton!
    var bookForm: BookDetailView!
    
    init(book: Book) {
        bookForm = BookDetailView(book: book)
        downloadButton = UIButton()
        favouritesButton = UIButton()
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        
        view.addSubview(bookForm)
        view.addSubview(downloadButton)
        view.addSubview(favouritesButton)
    
        favouritesButton.addTarget(self, action: #selector(favouritesButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            bookForm.topAnchor.constraint(equalTo: view.topAnchor),
            bookForm.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bookForm.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bookForm.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            
        ])
    }
    
    @objc private func favouritesButtonTapped() {
        //TODO
    }
    
}
