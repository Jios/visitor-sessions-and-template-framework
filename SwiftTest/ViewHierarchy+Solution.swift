import UIKit

extension Node {
    
    //if using Objective-C, leave this alone and implement the function in WebsiteVisitObjectiveC.m
    //if using Swift, implement this function
    static func findPathToNode(rootNode: Node, drawnAtPixel pixel: CGPoint) -> [String]{
        return ViewHierarchyObjectiveC.findPath(to: rootNode, drawnAtPixel: pixel)
    }

}
