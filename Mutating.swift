struct Stack<Element>{
    var arr:[Element] = []
    mutating func appendData(item: Element){
        arr.append(item)
        print(arr)
    }
}

var stack = Stack<String>()
stack.appendData(item: "Swift")
stack.appendData(item: "Java")
stack.appendData(item: "Ruby")
stack.appendData(item: "Kotlin")
stack.appendData(item: "Pearl")

