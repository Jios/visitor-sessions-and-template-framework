import Foundation

extension WebsiteVisit {

    //if using Objective-C, leave this alone and implement the function in WebsiteVisitObjectiveC.m
    //if using Swift, implement this function
    static func processWebsiteVisits(websiteVisits: [WebsiteVisit]) -> (websiteVisits: Int, uniqueVisitors: Int, sessions: Int) {
        let results = WebsiteVisitObjectiveC.processWebsiteVisits(websiteVisits)

        let websiteVisits = results[0].intValue
        let uniqueVisitors = results[1].intValue
        let sessions = results[2].intValue

        return (websiteVisits, uniqueVisitors, sessions)
    }
    
}
