//
//  View.swift
//  TestAlef
//
//  Created by Сергей Юханов on 21.11.2021.
//

import UIKit

protocol Configurable {
    func configuratePersonalLabel()
    func configurateMainSV()
    func configurateAddChildLabelAndButtonSV()
    func configurateChildSV()
}

class MainView: UIView, Configurable {

    let personalLabel = UILabel()
    let mainStackView = UIStackView()
    let addChildButton = UIButton(type: .custom)
    let addChildLabelAndButtonStackView = UIStackView()
    let childrenStackView = UIStackView()
    let childNameAndButtonStackView = UIStackView()
    let childAgeStackView = UIStackView()
    let spacer = UIView()



    public func configuratePersonalLabel() {
        personalLabel.translatesAutoresizingMaskIntoConstraints = false
        personalLabel.text = "Персональные данные"
        personalLabel.font = UIFont.boldSystemFont(ofSize: 17)
    }
    
    
    func configurateMainSV() {
        mainStackView.axis = .vertical
        mainStackView.distribution  = .fillProportionally
        mainStackView.alignment = .fill
        mainStackView.spacing   = 10
        
        addNameTextFieldToStackView()
        addAgeTextFieldToStackView()
    }
    
    func addNameTextFieldToStackView() {
        let textField = UITextField()
        textField.placeholder = "Имя"
        textField.borderStyle = .roundedRect
        mainStackView.addArrangedSubview(textField)
    }
    
    func addAgeTextFieldToStackView() {
        let textField = UITextField()
        textField.placeholder = "Возраст"
        textField.borderStyle = .roundedRect
        mainStackView.addArrangedSubview(textField)
    }
    
    func configurateAddChildLabelAndButtonSV() {
        addChildLabelAndButtonStackView.axis = .horizontal
        addChildLabelAndButtonStackView.distribution  = .fillProportionally
        addChildLabelAndButtonStackView.alignment = .fill
        addChildLabelAndButtonStackView.spacing   = 10
        
        addLabelToStackView()
        addButtonToStackView()
    }
    
    func addLabelToStackView() {
        let label = UILabel()
        label.text = "Дети (макс. 5)"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        addChildLabelAndButtonStackView.addArrangedSubview(label)
    }
    
    func addButtonToStackView() {
        addChildButton.setTitle("+ Добавить ребенка", for: .normal)
        addChildButton.backgroundColor = .white
        addChildButton.setTitleColor(.systemBlue, for: .normal)
        addChildButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        addChildButton.titleLabel?.numberOfLines = 1
        addChildButton.layer.borderWidth = 2
        addChildButton.layer.cornerRadius = 25
        addChildButton.layer.borderColor = UIColor.systemBlue.cgColor
        addChildLabelAndButtonStackView.addArrangedSubview(addChildButton)
    }
    
    func configurateChildSV() {
        childrenStackView.axis = .vertical
        childrenStackView.distribution  = .fillProportionally
        childrenStackView.alignment = .fill
        childrenStackView.spacing   = 10
        
        
        configurateChildNameAndButtonStackViewToChildSV()
        configurateChildAgeStackView()
    }
    
    func configurateChildNameAndButtonStackViewToChildSV() {
        
        childNameAndButtonStackView.axis = .horizontal
        childNameAndButtonStackView.distribution  = .fillProportionally
        childNameAndButtonStackView.alignment = .fill
        childNameAndButtonStackView.spacing   = 10
        addChildNameTextFieldToSV()
        addDeleteButtonToSV()
        childrenStackView.addArrangedSubview(childNameAndButtonStackView)
        
 
        
    }
    
    func addChildNameTextFieldToSV() {
        let textField = UITextField()
        textField.placeholder = "Имя"
        textField.borderStyle = .roundedRect
        childNameAndButtonStackView.addArrangedSubview(textField)
    }
    func addDeleteButtonToSV() {
        let button = UIButton(type: .system)
        button.setTitle("Удалить", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        childNameAndButtonStackView.addArrangedSubview(button)
    }
    
    func addChildAgeToStackView() {
        let childAgeTextField = UITextField()
        childAgeTextField.placeholder = "Возраст"
        childAgeTextField.borderStyle = .roundedRect
        childAgeStackView.addArrangedSubview(childAgeTextField)
    }
    
    func configurateChildAgeStackView() {
        childAgeStackView.axis = .horizontal
        childAgeStackView.distribution  = .fillProportionally
        childAgeStackView.alignment = .fill
        childAgeStackView.spacing   = 10
        
        addChildAgeToStackView()
        
        childrenStackView.addArrangedSubview(childAgeStackView)
    }

}
