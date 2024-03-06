//
//  EmployeeViewController.swift
//  HRMINIPROJECT
//
//  Created by Abdullah Bin Essa on 3/5/24.
//

import UIKit

class EmployeeViewController: UIViewController {
    
    var recivedfullName: String?
    var recivedemployeeImage: String?
    var recivedEmployeeSalary: String?
    var recivedEmail:String?
    var recivedPhoneNumber: String?
    var recivedIban: String?
    
    let generateContainer = UIView()
    let fullNameLabel = UILabel()
    let phoneNumberLabel = UILabel()
    let salaryLabel = UILabel()
    let emailLabel = UILabel()
    let ibanLabel = UILabel()
    let employeeUIImageView = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        let appearance = UINavigationBarAppearance()
        title = "Details page"
        appearance.configureWithDefaultBackground()
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        setupViews()
        setupUI()
        setupConstraints()
        
        
    }
    
    func setupViews(){
        
        view.addSubview(employeeUIImageView)
        view.addSubview(generateContainer)
        generateContainer.addSubview(fullNameLabel)
        generateContainer.addSubview(phoneNumberLabel)
        generateContainer.addSubview(salaryLabel)
        generateContainer.addSubview(emailLabel)
        generateContainer.addSubview(ibanLabel)
    }
    
    func setupUI(){
        
        employeeUIImageView.image = UIImage(named: recivedemployeeImage ?? "")
        generateContainer.backgroundColor = .gray
        generateContainer.layer.cornerRadius = 10
        fullNameLabel.text = "Name: \(recivedfullName ?? "" )"
        phoneNumberLabel.text = "Phone: \(recivedPhoneNumber ?? "" )"
        salaryLabel.text = "Salary: \(recivedEmployeeSalary ?? "" )"
        emailLabel.text = "Email: \(recivedEmail ?? "" )"
        ibanLabel.text = "IBAN: \(recivedIban ?? "" )"
        fullNameLabel.textColor = .white
        phoneNumberLabel.textColor = .white
        salaryLabel.textColor = .white
        emailLabel.textColor = .white
        ibanLabel.textColor = .white
        
        fullNameLabel.font = .boldSystemFont(ofSize: 17)
        phoneNumberLabel.font = .boldSystemFont(ofSize: 17)
        salaryLabel.font = .boldSystemFont(ofSize: 17)
        emailLabel.font = .boldSystemFont(ofSize: 17)
        ibanLabel.font = .boldSystemFont(ofSize: 17)
        
        
    }
    
    func setupConstraints(){
        
        employeeUIImageView.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top)
            make.leading.trailing.equalToSuperview().offset(0)
        }
        
        generateContainer.snp.makeConstraints { make in
            make.top.equalTo(employeeUIImageView.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview()
            make.height.width.equalTo(50).offset(200)
        }
        fullNameLabel.snp.makeConstraints { make in
            make.top.equalToSuperview()
        }
        phoneNumberLabel.snp.makeConstraints { make in
            make.top.equalTo(fullNameLabel.snp.bottom)
        }
        salaryLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneNumberLabel.snp.bottom)
        }
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(salaryLabel.snp.bottom)
        }
        ibanLabel.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom)
        }
        
        
    }
    
    
}
