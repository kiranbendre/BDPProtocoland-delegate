//
//  ViewController.swift
//  BDPProtocolAndDelegate
//
//  Created by Iphone XR on 14/12/22.
//

import UIKit
//MARK:- step4- confirm the protocol
class ViewController: UIViewController,DataPass {
    let nameLabel = UILabel()
    let phoneLabel = UILabel()
    let passButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 33.0/255, green: 40.0/255, blue: 64.0/255, alpha: 1.0)
        Lbl1()
        Lbl2()
        PassBtn()
    }

    func Lbl1(){
        nameLabel.text = "enter name"
        nameLabel.numberOfLines = 0
        nameLabel.textAlignment = .center
        nameLabel.sizeToFit()
        nameLabel.backgroundColor = UIColor.gray
        self.view.addSubview(nameLabel)
        //Add Constraint to Label
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: nameLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 150).isActive = true
        NSLayoutConstraint(item: nameLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: nameLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
   
    }
    func Lbl2(){
        phoneLabel.text = "enter phone"
        phoneLabel.numberOfLines = 0
        phoneLabel.textAlignment = .center
        phoneLabel.sizeToFit()
        phoneLabel.backgroundColor = UIColor.gray
        self.view.addSubview(phoneLabel)
        //Add Constraint to Label
        phoneLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: phoneLabel, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 200).isActive = true
        NSLayoutConstraint(item: phoneLabel, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 20).isActive = true
        NSLayoutConstraint(item: phoneLabel, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -20).isActive = true
    }
    func PassBtn(){
        passButton.setTitle("Push", for: .normal)
        passButton.setTitleColor(UIColor.blue, for: [])
        passButton.addTarget(self,action: #selector(passBtnAction),for: .touchUpInside)
        passButton.backgroundColor = UIColor.gray
        passButton.center = view.center
        view.addSubview(passButton)
        //Add Constraint to Button
        passButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: passButton, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1.0, constant: 350).isActive = true
        NSLayoutConstraint(item:passButton, attribute: .leading, relatedBy: .equal, toItem: self.view, attribute: .leading, multiplier: 1.0, constant: 15.0).isActive = true
        NSLayoutConstraint(item: passButton, attribute: .trailing, relatedBy: .equal, toItem: self.view, attribute: .trailing, multiplier: 1.0, constant: -15.0).isActive = true
    }
    
    @objc func passBtnAction(_ sender:UIButton!){
        let secVC = SecondViewController()
        secVC.delegate = self//step6 
        self.navigationController?.pushViewController(secVC, animated: true)
    }
    //MARK:-step5- assign the value to protocol
    func dataPassing(name: String, phone: String) {
        nameLabel.text = name
        phoneLabel.text = phone
        
    }
}

