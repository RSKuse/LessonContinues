//
//  ViewController.swift
//  LessonContinues
//
//  Created by Reuben Simphiwe Kuse on 2022/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var coverPhotoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Planets")
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        return imageView
    }()
    
    lazy var profilePictureImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Elon Musk")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 35
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.borderWidth = 3.5
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var followButton: UIButton = {
        let button = UIButton()
        button.setTitle("Follow", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .black
        button.layer.cornerRadius = 17.5
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(handleFollowUser), for: .touchUpInside)
        return button
    }()

    lazy var userNameLabel : UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Elon Musk"
        label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var blueTickVerificationImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Twitter Subscription Icon")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 0
        //imageView.layer.borderColor = UIColor.white.cgColor
        //imageView.layer.borderWidth = 3.5
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var userNameHandleLabel : UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.text = "@elonmusk"
        //label.font = UIFont.boldSystemFont(ofSize: 25)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        
    }
    
    func setupUI() {
        view.addSubview(coverPhotoImageView)
        view.addSubview(profilePictureImageView)
        view.addSubview(followButton)
        view.addSubview(userNameLabel)
        view.addSubview(blueTickVerificationImageView)
        view.addSubview(userNameHandleLabel)
        
        
        coverPhotoImageView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        coverPhotoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        coverPhotoImageView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        coverPhotoImageView.widthAnchor.constraint(equalToConstant: 150).isActive = true
        coverPhotoImageView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0).isActive = true
        coverPhotoImageView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0).isActive = true
        
        
        profilePictureImageView.centerXAnchor.constraint(equalTo: coverPhotoImageView.safeAreaLayoutGuide.leftAnchor, constant: 45).isActive = true
        profilePictureImageView.centerYAnchor.constraint(equalTo: coverPhotoImageView.safeAreaLayoutGuide.bottomAnchor,
                                                           constant: 0).isActive = true
        profilePictureImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        profilePictureImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        
        
        followButton.centerXAnchor.constraint(equalTo: coverPhotoImageView.safeAreaLayoutGuide.rightAnchor, constant: -80).isActive = true
        followButton.centerYAnchor.constraint(equalTo: coverPhotoImageView.safeAreaLayoutGuide.bottomAnchor,
                                                           constant: 25).isActive = true
        followButton.heightAnchor.constraint(equalToConstant: 35).isActive = true
        followButton.widthAnchor.constraint(equalToConstant: 125).isActive = true
        
        userNameLabel.leftAnchor.constraint(equalTo: profilePictureImageView.safeAreaLayoutGuide.leftAnchor, constant: -15).isActive = true
        userNameLabel.centerYAnchor.constraint(equalTo: profilePictureImageView.safeAreaLayoutGuide.bottomAnchor,
                                                           constant: 20).isActive = true
        userNameLabel.heightAnchor.constraint(equalToConstant: 70).isActive = true
        userNameLabel.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        blueTickVerificationImageView.centerXAnchor.constraint(equalTo: userNameLabel.safeAreaLayoutGuide.rightAnchor, constant: 0).isActive = true
        blueTickVerificationImageView.centerYAnchor.constraint(equalTo: userNameLabel.safeAreaLayoutGuide.centerYAnchor,
                                                           constant: 0).isActive = true
        blueTickVerificationImageView.heightAnchor.constraint(equalToConstant: 20).isActive = true
        blueTickVerificationImageView.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        userNameHandleLabel.leftAnchor.constraint(equalTo: userNameLabel.safeAreaLayoutGuide.leftAnchor, constant: 10).isActive = true
        userNameHandleLabel.centerYAnchor.constraint(equalTo: userNameLabel.safeAreaLayoutGuide.bottomAnchor,
                                                           constant: -5).isActive = true
        userNameHandleLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        userNameHandleLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        
    }
    
    @objc func handleFollowUser() {
        print("Follow user here..")
    }


}

