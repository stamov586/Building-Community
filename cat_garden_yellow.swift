//MARK: - Building Community
import UIKit

//1
class Person {
    var name: String
    var age: Int
    var interests: [String]

    init(name: String, age: Int, interests: [String]) {
        self.name = name
        self.age = age
        self.interests = interests
    }
}

//2
class Community {
    var people: [Person]

    init(people: [Person]) {
        self.people = people
    }
    
    //3
    func printPeople() {
        for person in people {
            print("Name: \(person.name) Age: \(person.age) Interests: \(person.interests)")
        }
    }
    
    //4
    func addPerson(_ person: Person)  {
        people.append(person)
    }
    
    //5
    func removePerson(name: String) {
        for (index, person) in people.enumerated() {
            if person.name == name {
                people.remove(at: index)
            }
        }
    }
    
    //6
    func averageAge() -> Double {
        var sum = 0
        for person in people {
            sum += person.age
        }
        
        return Double(sum) / Double(people.count)
    }
    
    //7
    func mostCommonInterest() -> String? {
        var interestCounts = [String: Int]()
        for person in people {
            for interest in person.interests {
                if let count = interestCounts[interest] {
                    interestCounts[interest] = count + 1
                } else {
                    interestCounts[interest] = 1
                }
            }
        }
        
        let mostInterests = interestCounts.sorted { $0.1 > $1.1 }.first
        return mostInterests?.key
    }
    
    //8
    func connect(person1Name: String, person2Name: String) {
        for (index, person) in people.enumerated() {
            if person.name == person1Name {
                let person2 = people[index+1]
                if person2.name == person2Name {
                    let sharedInterests = person.interests.filter { person2.interests.contains($0) }
                    print("\(person1Name) and \(person2Name) have shared interests: \(sharedInterests)")
                }
            }
        }
    }
}

//9
let person1 = Person(name: "John", age: 27, interests: ["Sports", "Movies", "Reading"])

//10
let person2 = Person(name: "Jane", age: 25, interests: ["Cooking", "Movies", "Singing"])

//11
let person3 = Person(name: "Bob", age: 31, interests: ["Sports", "Movies", "Hiking"])

//12
let people = [person1, person2, person3]

//13
let community = Community(people: people)

//14
community.printPeople()

//15
community.addPerson(Person(name: "Tim", age: 28, interests: ["Video Games", "Movies", "Reading"]))

//16
community.removePerson(name: "John")

//17
let avgAge = community.averageAge()
print("Average Age of Community: \(avgAge)")

//18
if let sharedInterest = community.mostCommonInterest() {
    print("Most Common Interest: \(sharedInterest)")
}

//19
community.connect(person1Name: "Jane", person2Name: "Bob")

//20
let person4 = Person(name: "Sam", age: 35, interests: ["Video Games", "Sports", "Reading"])

//21
community.addPerson(person4)

//22
let newAvgAge = community.averageAge()
print("New Average Age of Community: \(newAvgAge)")

//23
if let newSharedInterest = community.mostCommonInterest() {
    print("New Most Common Interest: \(newSharedInterest)")
}

//24
community.connect(person1Name: "Jane", person2Name: "Sam")

//25
print("People in Community: \(community.people.count)")