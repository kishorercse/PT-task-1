//
//  ViewController.swift
//  Task1
//
//  Created by kishore-pt5557 on 29/07/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        let imageView = UIImageView(frame: CGRect(x: 20, y: 100, width: 30, height: 30))
        imageView.image = UIImage(named: "unchecked")
        view.addSubview(imageView)
        
        let label = UILabel(frame: CGRect(x: 75, y: 90, width: 205, height: 50))
        label.text = "Verify 'Whats new content'"
        view.addSubview(label)
        
        let userImageView = UIImageView(frame: CGRect(x: 320, y: 100, width: 50, height: 50))
        userImageView.image = UIImage(named: "user")
        view.addSubview(userImageView)
        
        let label2 = UILabel(frame: CGRect(x: 75, y: 130, width: 100, height: 30))
        label2.text = "I-1-T69"
        label2.sizeToFit()
        view.addSubview(label2)
        
        let label3 = UILabel(frame: CGRect(x: 75, y: 160, width: 270, height: 50))
        label3.text = "Same content as in 3.5.6 (Added hyphens and extra space removed in"
        label3.numberOfLines = 2
        view.addSubview(label3)
        
        let label4 = UILabel(frame: CGRect(x: 75, y: 230, width: 100, height: 50))
        label4.textColor = .red
        label4.text = "View More"
        label4.sizeToFit()
        view.addSubview(label4)
        
        let label5 = UILabel(frame: CGRect(x: 75, y: 270, width: 80, height: 30))
        label5.text = "Not yet started"
        label5.textAlignment = .center
        label5.backgroundColor = .lightGray
        label5.layer.masksToBounds = true
        label5.layer.cornerRadius = 15
        view.addSubview(label5)
        
        let label6 = UILabel(frame: CGRect(x: 165, y: 270, width: 80, height: 30))
        label6.text = "No due date"
        label6.textAlignment = .center
        label6.backgroundColor = .lightGray
        label6.layer.masksToBounds = true
        label6.layer.cornerRadius = 15
        view.addSubview(label6)
        
        let label7 = UILabel(frame: CGRect(x: 255, y: 270, width: 80, height: 30))
        label7.text = "None"
        label7.textAlignment = .center
        label7.backgroundColor = .lightGray
        label7.layer.masksToBounds = true
        label7.layer.cornerRadius = 15
        view.addSubview(label7)
        
        let optionsImageView = UIImageView(frame: CGRect(x: 345, y: 270, width: 30, height: 30))
        optionsImageView.image = UIImage(named: "options")
        view.addSubview(optionsImageView)
        
        let button = UIButton(frame: CGRect(x: (screenWidth-40)/2, y: (screenHeight-40)/2, width: 100, height: 50))
        button.setTitle("Constraint", for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)
    }
    
    @objc func buttonTapped() {
        self.navigationController?.pushViewController(ViewController2(), animated: true)
    }


}



class ViewController2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        let imageView = UIImageView()
        imageView.image = UIImage(named: "unchecked")
        
        view.addSubview(imageView)
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imageView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 30).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        
        let label = UILabel()
        label.text = "Verify 'Whats new content'"
        label.sizeToFit()
        view.addSubview(label)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.widthAnchor.constraint(equalToConstant: 205).isActive = true
        label.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 20).isActive = true
        label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        let userImageView = UIImageView()
        userImageView.image = UIImage(named: "user")
        view.addSubview(userImageView)
        
        userImageView.translatesAutoresizingMaskIntoConstraints = false
        userImageView.widthAnchor.constraint(equalToConstant: 50).isActive = true
        userImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        userImageView.leftAnchor.constraint(equalTo: label.rightAnchor, constant: 20).isActive = true
        userImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
        
        let label2 = UILabel()
        label2.text = "I-1-T69"
        label2.sizeToFit()
        view.addSubview(label2)
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.widthAnchor.constraint(equalToConstant: 100).isActive = true
        label2.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label2.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 20).isActive = true
        label2.topAnchor.constraint(equalTo: label.bottomAnchor).isActive = true
        
        let label3 = UILabel()
        label3.text = "Same content as in 3.5.6 (Added hypens and extra space removed in"
        label3.sizeToFit()
        label3.numberOfLines = 2
        view.addSubview(label3)
        
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.widthAnchor.constraint(equalToConstant: 270).isActive = true
        label3.heightAnchor.constraint(equalToConstant: 50).isActive = true
        label3.topAnchor.constraint(equalTo: label2.bottomAnchor, constant: 10).isActive = true
        label3.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 20).isActive = true
        
        
        let label4 = UILabel()
        label4.textColor = .red
        label4.text = "View More"
        label4.sizeToFit()
        view.addSubview(label4)
        
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.widthAnchor.constraint(equalToConstant: 200).isActive = true
        label4.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label4.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 20).isActive = true
        label4.topAnchor.constraint(equalTo: label3.bottomAnchor, constant: 20).isActive = true
        
        let label5 = UILabel()
        label5.text = "Not yet started"
        label5.textAlignment = .center
        label5.backgroundColor = .lightGray
        label5.layer.masksToBounds = true
        label5.layer.cornerRadius = 15
        view.addSubview(label5)
        
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.widthAnchor.constraint(equalToConstant: 80).isActive = true
        label5.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label5.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 20).isActive = true
        label5.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 20).isActive = true
        
        
        let label6 = UILabel()
        label6.text = "No due date"
        label6.textAlignment = .center
        label6.backgroundColor = .lightGray
        label6.layer.masksToBounds = true
        label6.layer.cornerRadius = 15
        view.addSubview(label6)
        
        label6.translatesAutoresizingMaskIntoConstraints = false
        label6.widthAnchor.constraint(equalToConstant: 80).isActive = true
        label6.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label6.leftAnchor.constraint(equalTo: label5.rightAnchor, constant: 10).isActive = true
        label6.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 20).isActive = true
        
        let label7 = UILabel()
        label7.text = "None"
        label7.textAlignment = .center
        label7.backgroundColor = .lightGray
        label7.layer.masksToBounds = true
        label7.layer.cornerRadius = 15
        view.addSubview(label7)
        
        label7.translatesAutoresizingMaskIntoConstraints = false
        label7.widthAnchor.constraint(equalToConstant: 80).isActive = true
        label7.heightAnchor.constraint(equalToConstant: 30).isActive = true
        label7.leftAnchor.constraint(equalTo: label6.rightAnchor, constant: 10).isActive = true
        label7.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 20).isActive = true
        
        
        let optionsImageView = UIImageView()
        optionsImageView.image = UIImage(named: "options")
        view.addSubview(optionsImageView)
        
        optionsImageView.translatesAutoresizingMaskIntoConstraints = false
        optionsImageView.widthAnchor.constraint(equalToConstant: 30).isActive = true
        optionsImageView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        optionsImageView.leftAnchor.constraint(equalTo: label7.rightAnchor, constant: 10).isActive = true
        optionsImageView.topAnchor.constraint(equalTo: label4.bottomAnchor, constant: 20).isActive = true
        
        let button = UIButton()
        button.setTitle("Frame", for: .normal)
        button.backgroundColor = .systemGreen
        button.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        view.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        
        

    }
    
    @objc func buttonTapped() {
        self.navigationController?.popViewController(animated: true)
    }
}
