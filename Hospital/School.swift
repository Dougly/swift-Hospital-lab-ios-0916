//
//  School.swift
//  Hospital


//enums
enum Punishment {
    case light, medium, severe
    
    var messageToStudent: String {
        switch self {
        case .light:
            return "You're to go back to class, don't do it again."
        case .medium:
            return "Why would you think that's a good idea?! You're going to detention."
        case .severe:
            return "We are expelling you from the school!"
        }
    }
    
    var messageToParent: String {
        switch self {
        case .light:
            return "Your child thought it was funny to put gum in Amy's hair."
        case .medium:
            return "Your child has become a terror in the classroom."
        case .severe:
            return "Your child has been expelled from the school."
        }
    }
}

enum Subject {
    case math, science, english
    
    var instructions: String {
        switch self {
        case .math:
            return "Take out your math books please."
        case .english:
            return "To read or not to read. Everyone take out your english books."
        case .science:
            return "Time to learn the best subject of all! Science!!"
        }
    }
}


//Protocols
protocol Payable {
    func wages() -> Double
}

protocol TimeOff {
    var vacationDays: Int { get set }
    func requestForVacation (_ days: Int) -> Bool
}

protocol Reprimand {
    func disciplineStudent(_ scale: Punishment) -> String
    func callParentDeliveringMessage(_ scale: Punishment) -> String
}

protocol Teach {
    func teachSubject(_ subject: Subject) -> String
}

protocol Employee: Payable, TimeOff {
    
}




//Default functions for protocols
extension Payable {
    func wages () -> Double {
        return 50_000.00
    }
}

extension TimeOff {
    func requestForVacation (_ days: Int) -> Bool {
        return days <= vacationDays
    }
}

extension Reprimand {
    func disciplineStudent(_ scale: Punishment) -> String {
        return scale.messageToStudent
    }
    func callParentDeliveringMessage(_ scale: Punishment) -> String {
        return scale.messageToParent
    }
}

extension Teach {
    func teachSubject(_ subject: Subject) -> String {
        return subject.instructions
    }
}








