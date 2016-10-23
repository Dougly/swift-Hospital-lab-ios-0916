//
//  SchoolEmployees.swift
//  Hospital

struct AdvisoryBoardMember: Employee {
    var name: String
    var vacationDays: Int = 30
    
    func wages() -> Double {
        return 100_000.000
    }
}

struct Principal: Employee, Reprimand {
    var name: String
    var vacationDays: Int = 30
    
    func wages() -> Double {
        return 80_000.00
    }
}

struct Teacher: Employee, Teach {
    var name: String
    var vacationDays: Int = 15
    
}







