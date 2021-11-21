//
//  ViewController.swift
//  TestAlef
//
//  Created by Сергей Юханов on 21.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    let mainView = MainView()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setConstraints()
        
        mainView.configuratePersonalLabel()
        
        mainView.configurateMainSV()
        
        mainView.configurateAddChildLabelAndButtonSV()
    }

}

extension ViewController {
    func setConstraints() {
        view.addSubview(mainView.personalLabel)
        NSLayoutConstraint.activate([
            mainView.personalLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            mainView.personalLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30)
        ])
        
        view.addSubview(mainView.mainStackView)
        mainView.mainStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainView.mainStackView.topAnchor.constraint(equalTo: mainView.personalLabel.bottomAnchor, constant: 20),
            mainView.mainStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            mainView.mainStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            //childrenStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            mainView.mainStackView.heightAnchor.constraint(equalToConstant: 120)
               ])
        
        view.addSubview(mainView.addChildLabelAndButtonStackView)
        mainView.addChildLabelAndButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainView.addChildLabelAndButtonStackView.topAnchor.constraint(equalTo: mainView.mainStackView.bottomAnchor, constant: 20),
            mainView.addChildLabelAndButtonStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            mainView.addChildLabelAndButtonStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            //childrenStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            mainView.addChildLabelAndButtonStackView.heightAnchor.constraint(equalToConstant: 50)
               ])
        
    }
}
    


