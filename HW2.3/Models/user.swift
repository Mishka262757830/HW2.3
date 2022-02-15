//
//  user.swift
//  HW2.3
//
//  Created by Mikhail Stepanov on 08.02.2022.
//

import CoreGraphics

struct User {
    let login: String
    let password: String
    let greating: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "user",
            password: "password",
            greating: "Привет, уважаемый гость!",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let myDream: String
    
    static func getPerson() -> Person {
        Person(
            name: "Михаил",
            surname: "Степанов",
            age: 30,
            myDream: """
            Не знаю, что о себе рассказать, расскжу свои мечты.
            Первая, стать крутым iOS-разработчиком.
            Вторая, купить мотоцикл.
            """
        )
    }
}
