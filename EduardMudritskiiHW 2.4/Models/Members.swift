//
//  Members.swift
//  EduardMudritskiiHW 2.4
//
//  Created by Эдуард on 30.10.2021.
//

import Foundation

struct Student {
    let name: String
    let secondName: String
    let login: String
    let password: String
    let email: String
    let skil: Skils
}

struct Skils {
    var text: String
    var type: Courses
}

enum Courses {
    case first
    case second
    case third
    case fourth
    case fifth
}

struct Project {
    var text: String
    var type: DeviseType
}

enum DeviseType {
    case iphone
    case ipad
    case iwatch
    case macbook
}

var student1 = Student(name: "Eduard", secondName: "Soft", login: "AS", password: "12", email: "eduard@soft.ru", skil: Skils(text: "SwiftBook", type: Courses.second))
var project = Project(text: "Iphone 12 APP", type: .iphone)

//var student2 = Student(name: "Denis",
//                       secondName: "Rogov",
//                       login: "RE",
//                       password: "34",
//                       email: "denis@rogov.ru",
//                       skil: : "Logo2")

