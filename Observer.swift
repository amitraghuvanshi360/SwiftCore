class Observable {
    enum State {
        case swift , java, python, ruby , pearl, kotlin
    }
    
    var state = State.swift
}


class Observer: Observable {
    override var state: State {
        willSet {
            print("Observer old value \(state) , \(newValue)")
        }
    }
}

var observer = Observer()
observer.state = .java
