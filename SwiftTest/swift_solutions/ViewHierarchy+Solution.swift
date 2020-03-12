import UIKit



extension Node
{
    static func findPathToNode(rootNode: Node,
                               drawnAtPixel pixel: CGPoint) -> [String]
    {
        // time complexity: O(n)
        // space complexity: O(n)
        // where n is the total number of nodes
        
        guard rootNode.contain(pixel) else {
            return []
        }
        
        var pt = pixel
        
        var nodeIDs: [String] = []
        var stack: [Node] = [rootNode]
        
        while !stack.isEmpty
        {
            let node = stack.removeLast()
            
            if node.contain(pt)
            {
                pt = CGPoint(x: pt.x - node.frame.origin.x,
                             y: pt.y - node.frame.origin.y)
                
                nodeIDs.append(node.nodeId)
                
                stack = node.children
            }
        }
        
        return nodeIDs
    }
}


extension Node
{
    func contain(_ point: CGPoint) -> Bool
    {
        return frame.minX <= point.x && point.x < frame.maxX
            && frame.minY <= point.y && point.y < frame.maxY
    }
}
