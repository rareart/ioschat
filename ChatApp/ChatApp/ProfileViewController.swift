//
//  ProfileViewController.swift
//  ChatApp
//
//  Created by Vladimir Konovalenko on 16.09.2020.
//  Copyright © 2020 Vladimir Konovalenko. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var logoView: UIView!
    @IBOutlet weak var editButton: UIButton!
    @IBOutlet weak var saveButton: UIButton!
        
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        //print("Edit button frame in init is: \(editButton.frame)")
        //тут будет runtime error, так как свойства еще не проинициализированны
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        print("Edit button frame in viewDidLoad is: \(editButton.frame)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Edit button frame in viewDidAppear is: \(editButton.frame)")
    }
    
    private func setupView() {
        logoView.layer.cornerRadius = logoView.bounds.width / 2
        editButton.titleEdgeInsets = UIEdgeInsets(top: 16, left: 0, bottom: 0, right: 0)
        logoView.backgroundColor = UIColor(hex: "#E4E82BFF")
        saveButton.backgroundColor = UIColor(hex: "#F6F6F6FF")
        saveButton.layer.cornerRadius = 14
    }
    
}

