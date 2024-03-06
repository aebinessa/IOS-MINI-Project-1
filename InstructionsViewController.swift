//
//  InstructionsViewController.swift
//  HRMINIPROJECT
//
//  Created by Abdullah Bin Essa on 3/5/24.
//

import UIKit

class InstructionsViewController: UIViewController {
    let textLabel = UILabel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        setupAutoLayout()
        title = "Instructions"
    }
    
    func setupUI() {
        view.backgroundColor = .systemCyan
        
        textLabel.text = """
            A work description, also known as a job description, is a detailed outline of the duties, responsibilities, qualifications, and expectations associated with a particular job role within an organization. It serves as a critical document for both employers and employees, providing clarity on the scope of work and ensuring alignment between job requirements and candidate qualifications. Here's a breakdown of the components typically included in a work description:

            Job Title: Clearly states the title of the position within the organization.

            Job Summary/Objective: Provides a brief overview of the role, its purpose, and its place within the organization.

            Responsibilities/Duties: Lists the specific tasks and duties that the employee is expected to perform as part of their job role. These may include daily, weekly, monthly, or periodic responsibilities.

            Qualifications/Skills: Outlines the education, experience, certifications, technical skills, and soft skills required for the position. This section helps potential candidates assess their suitability for the role.

            Experience: Specifies the level of experience required for the position, including any preferred or minimum years of experience in a related field.

            Education: Details the educational qualifications necessary for the role, such as a degree, diploma, or certification.

            Work Environment: Describes the work environment, including factors such as office setting, remote work options, travel requirements, and any physical demands associated with the job.

            Reporting Structure: Clarifies the reporting relationships within the organization, including the direct supervisor and any subordinate positions.

            Salary/Benefits: May include information on salary range, benefits package, bonus structure, and other compensation-related details. However, some organizations prefer to keep salary information confidential until later stages of the hiring process.

            Company Culture/Values: Provides insights into the company's culture, mission, values, and overall work ethos, helping candidates assess their fit within the organization.

            Application Instructions: Specifies how candidates should apply for the position, including submission guidelines, required documents (e.g., resume, cover letter), and contact information.
            """
        textLabel.numberOfLines = 0
        textLabel.font = .systemFont(ofSize: 15, weight: .bold)
        textLabel.font = UIFont.systemFont(ofSize: 16)
    }
    
    func setupAutoLayout() {
        view.addSubview(textLabel)
        textLabel.snp.makeConstraints { make in
            make.top.bottom.equalToSuperview()
            make.leading.equalToSuperview().offset(20)
            make.trailing.equalToSuperview().offset(-20)
        }
    }
    
}
