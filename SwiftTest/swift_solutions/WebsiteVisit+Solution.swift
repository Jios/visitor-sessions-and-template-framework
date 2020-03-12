import Foundation



extension WebsiteVisit
{
    static func processWebsiteVisits(websiteVisits: [WebsiteVisit]) -> (websiteVisits: Int, uniqueVisitors: Int, sessions: Int)
    {
        // time complexity: O(n)
        // space complexity: O(n)
        // where n is the number of WebsiteVisit objects
                
        var numSessions = 0
        var hash: [String: Int] = [:]
        
        websiteVisits.forEach { (visit) in
            
            if let timestamp = hash[visit.visitorId]
            {
                numSessions += timestamp.isNewSession(visit.timestamp) ? 1 : 0
                hash[visit.visitorId] = visit.timestamp
            }
            else
            {
                numSessions += 1
                hash[visit.visitorId] = visit.timestamp
            }
        }
        
        let numUniqueVisitors = hash.keys.count
        let numVisits = websiteVisits.count
        
        return (numVisits, numUniqueVisitors, numSessions)
    }
}


extension Int
{
    func isNewSession(_ newTimestampe: Int) -> Bool
    {
        return newTimestampe > self + 1800
    }
}
