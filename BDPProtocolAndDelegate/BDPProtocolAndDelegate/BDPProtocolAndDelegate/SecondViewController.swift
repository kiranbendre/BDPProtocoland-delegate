//
//  SecondViewController.swift
//  BDPProtocolAndDelegate
//
//  Created by Iphone XR on 14/12/22.
//

import UIKit
//MARK:-step1 Create a protocol for func to pass data
protocol DataPass{
    func dataPassing(name:String,phone:String)
}
class SecondViewController: UIViewController, UITextFieldDelegate {
    let nameTextField = UITextField()
    let phoneTextField = UITextField()
    let backButton = UIButton()
    //MARK:- Step2- link this protocol via delegate property
    var delegate:DataPass!  //step2
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 80/255, green: 231 / 255.0, blue: 150 / 255.0, alpha: 1.0)
        TF1()
        TF2()
        BackBtn()
    }
    
    func TF1(){
        nameTextField.placeholder = "Enter your name"
        nameTextField.font = UIFont.systemFont(ofSize: 15)
        nameTextField.borderStyle = UITextField.BorderStyle.roundedRect
        nameTextField.autocorrectionType = UITextAutocorrectionType.no
        nameTextField.returnKeyType = UIReturnKeyType.done
        nameTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        nameTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        nameTextField.delegate = self
        self.view.addSubview(nameTextField)
        //Add Constraint to Textfield
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: nameTextField, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 150).isActive = true
        NSLayoutConstraint(item: nameTextField, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: nameTextField, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
    }
    func TF2(){
        phoneTextField.placeholder = "Enter your phonenumber"
        phoneTextField.font = UIFont.systemFont(ofSize: 15)
        phoneTextField.borderStyle = UITextField.BorderStyle.roundedRect
        phoneTextField.autocorrectionType = UITextAutocorrectionType.no
        phoneTextField.returnKeyType = UIReturnKeyType.done
        phoneTextField.clearButtonMode = UITextField.ViewMode.whileEditing
        phoneTextField.contentVerticalAlignment = UIControl.ContentVerticalAlignment.center
        phoneTextField.delegate = self
        self.view.addSubview(phoneTextField)
        //Add Constraint to Textfield
        phoneTextField.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: phoneTextField, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 200).isActive = true
        NSLayoutConstraint(item: phoneTextField, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: phoneTextField, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
    }
    func BackBtn(){
        backButton.setTitle("Save", for: .normal)
        backButton.setTitleColor(UIColor.blue, for: [])
        backButton.addTarget(self,
                              action: #selector(backBtnAction),
                              for: .touchUpInside)
        backButton.backgroundColor = UIColor.systemMint
        backButton.center = view.center
        view.addSubview(backButton)
        
        //Add Constraint to Button
        backButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: backButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 350).isActive = true
        NSLayoutConstraint(item:backButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: backButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
    }
    //MARK:- Step3-  the value of dataPassing to tf
    @objc func backBtnAction(_ sender:UIButton!){
        delegate.dataPassing(name: nameTextField.text!, phone: phoneTextField.text!)
    }
    
}
