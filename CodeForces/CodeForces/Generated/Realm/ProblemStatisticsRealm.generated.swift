// Generated using Sourcery 0.13.1 — https://github.com/krzysztofzablocki/Sourcery
// DO NOT EDIT

import RealmSwift


final class ProblemStatisticsRealm: Object { 
 
    let contestId = RealmOptional<Int>() 
    @objc dynamic var index: String = "" 
    @objc dynamic var solvedCount: Int = 0 

}

extension ProblemStatisticsRealm: RealmObject {
    var model: ProblemStatistics {
        
        
        
        return ProblemStatistics(contestId: contestId.value, index: index, solvedCount: solvedCount)
    }

    convenience init(model: ProblemStatistics) {
        self.init()
        
        self.contestId.value = model.contestId        
        self.index = model.index        
        self.solvedCount = model.solvedCount        
    }
}

extension ProblemStatistics: RealmRepresentable {
    var persistenceObject: ProblemStatisticsRealm {
        return ProblemStatisticsRealm(model: self)
    }
}