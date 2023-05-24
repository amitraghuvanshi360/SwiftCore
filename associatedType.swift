
/*
   Swift, the associatedtype keyword is used within a protocol to define a placeholder type that is associated with the conforming type.
  It allows a protocol to specify that there must be a type that conforms to certain criteria, without specifying the actual type itself.

  By using associatedtype, protocols can define requirements that involve types that are not known at the time of protocol declaration,
  but will be determined by the types that conform to the protocol.
 *
 */
protocol associatedTypeProtocol{
    associatedtype Item
    func displayItems() -> Item
}


struct Associated<T>: associatedTypeProtocol{
    
    
    typealias Item = String
    var str = "Swifty Coder"
    func displayItems() -> String{
        return "accociatedType \(str) \(type(of: T.self))" as! T as! String
    }
}

let associateType =  Associated<Any>()
print(associateType.displayItems())
