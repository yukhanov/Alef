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
        mainView.addChildButton.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("Button tapped")
        mainView.configurateChildSV()
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
        
        view.addSubview(mainView.childrenStackView)
        mainView.childrenStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainView.childrenStackView.topAnchor.constraint(equalTo: mainView.addChildLabelAndButtonStackView.bottomAnchor, constant: 20),
            mainView.childrenStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            mainView.childrenStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            //childrenStackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -30),
            mainView.childrenStackView.heightAnchor.constraint(equalToConstant: 110)
               ])
        
        view.addSubview(mainView.childNameAndButtonStackView)
        mainView.childNameAndButtonStackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            mainView.childNameAndButtonStackView.heightAnchor.constraint(equalToConstant: 50)
               ])
        //let widthOfView = mainView.childrenStackView.intrinsicContentSize.width
       // let widthForTF = widthOfView \ 2
       // mainView.childAgeTextField.translatesAutoresizingMaskIntoConstraints = false
//        NSLayoutConstraint.activate([
//            mainView.childAgeTextField.widthAnchor.constraint(equalToConstant: 150)
//        ])
        
     
    }
}
    


