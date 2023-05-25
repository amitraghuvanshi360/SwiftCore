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

protocol Container {
    associatedtype Item: Equatable
    mutating func append(_ item: Item)
}
