//
//  ViewController.swift
//  proto_test1
//
//  Created by 김미향 on 2022/03/29.
//

import UIKit

class ViewController: UIViewController {
    
    var window: UIWindow?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title="Quiz"
        self.view.backgroundColor=UIColor.white
        
        setupViews()
    }
    
    @objc func btnGetStartedAction() {
        print("push")
        let v=QuizVC()
        self.navigationController?.pushViewController(v, animated: true)
    }
    
    func setupViews() {
        self.view.addSubview(lblTitle)
        lblTitle.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 150).isActive=true
        lblTitle.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        lblTitle.widthAnchor.constraint(equalToConstant: 250).isActive=true
        lblTitle.heightAnchor.constraint(equalToConstant: 80).isActive=true
        
        self.view.addSubview(btnGetStarted)
        btnGetStarted.heightAnchor.constraint(equalToConstant: 50).isActive=true
        btnGetStarted.widthAnchor.constraint(equalToConstant: 150).isActive=true
        btnGetStarted.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive=true
        btnGetStarted.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 0).isActive=true
    }
    
    let lblTitle: UILabel = {
        let lbl=UILabel()
        lbl.text="Quiz App"
        lbl.textColor=UIColor.darkGray
        lbl.textAlignment = .center
        lbl.font = UIFont.systemFont(ofSize: 46)
        lbl.numberOfLines=2
        lbl.translatesAutoresizingMaskIntoConstraints=false
        return lbl
    }()
    
    let btnGetStarted: UIButton = {
        let btn=UIButton()
        btn.setTitle("Get Started", for: .normal)
        btn.setTitleColor(UIColor.white, for: .normal)
        btn.backgroundColor=UIColor.orange
        btn.layer.cornerRadius=5
        btn.layer.masksToBounds=true
        btn.translatesAutoresizingMaskIntoConstraints=false
        btn.addTarget(self, action: #selector(btnGetStartedAction), for: .touchUpInside)
        return btn
    }()
    
}

