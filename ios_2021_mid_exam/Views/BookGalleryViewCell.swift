//
//  BookGalleryViewCell.swift
//  ios_2021_mid_exam
//
//  Created by ZehraIliyaz  on 7.01.22.
//

import Foundation
import UIKit

class BookGalleryViewCell: UICollectionViewCell {
    static var cellIdentifier = "imageCell"
    
    var profileImageView:  UIImageView!
    var title: UILabel!
    
    func setup(bookData: Book){
        profileImageView.contentMode = .scaleAspectFill
        profileImageView.image = UIImage(imageLiteralResourceName: bookData.photo)
        title.textAlignment = .center
        title.text = bookData.title
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.contentView.backgroundColor = .purple
        contentView.layer.cornerRadius = 6.0
        contentView.layer.masksToBounds = true
        self.profileImageView = UIImageView()
        self.profileImageView.frame = CGRect(x: 0, y: 0, width: contentView.frame.width, height: contentView.frame.height - 20)
        self.title = UILabel()
        self.title.frame = CGRect(x: 0, y: self.profileImageView.frame.maxY, width: contentView.frame.width, height: 20)
        translatesAutoresizingMaskIntoConstraints = false
        profileImageView.clipsToBounds = true
        self.contentView.addSubview(profileImageView)
        self.contentView.addSubview(title)
        setupConstraints()
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConstraints() {
        
        NSLayoutConstraint.activate([
            profileImageView.topAnchor.constraint(equalTo: contentView.topAnchor),
            profileImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            profileImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            profileImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15),
            profileImageView.widthAnchor.constraint(equalToConstant: 100),
            profileImageView.heightAnchor.constraint(equalToConstant: 80),
            title.topAnchor.constraint(equalTo: profileImageView.bottomAnchor),
            title.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            title.trailingAnchor.constraint(equalTo: contentView.trailingAnchor)
        ])
        
    }
}

