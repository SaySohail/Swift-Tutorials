class Parent {
    var name: String
    var child: Child?
    var child2: Child2?
    init(_ name: String, child: Child? = nil) {
        self.name = name
        self.child = child
        guard let child = child else {
            return
        }
        child.onNewMarkReceived = { [weak self] mark in
                    print("Hello World")
                    self?.printParentName()
                }
    }
    
    func getChildMarks() -> [Int]? {
        return child?.marks
    }
    func initaliseChild(childName: String, parent: Parent) -> Child{
        child = Child(childName, marks: [12,13,14], parent: parent )
        return child!
    }
    func initaliseChild2(childName: String, parent: Parent) -> Child2 {
        child2 = Child2(childName, marks: [12,13,14], parent: parent )
        return child2!
    }
    
    func printParentName() {
        print("Im here")
        print(name)
    }
    func updateChild2(name: String) {
        child2?.updateName(nameChange: name)
    }
}

class Child {
    var name: String
    var marks: [Int]
    weak var parent: Parent?
    var onNewMarkReceived: ((Int) -> Void)?
    
    init(_ name: String, marks: [Int] = [], parent: Parent? = nil) {
        self.name = name
        self.marks = marks
        self.parent = parent
    }
    func printChildName() {
        print(name)
    }
    func printParentName(name: String){
        parent?.updateChild2(name: name)
    }
    

}
class Child2 {
    var name: String
    var marks: [Int]
    weak var parent: Parent?
    var onNewMarkReceived: ((Int) -> Void)?
    
    init(_ name: String, marks: [Int] = [], parent: Parent? = nil) {
        self.name = name
        self.marks = marks
        self.parent = parent
    }
    func printChildName() {
        print(name)
    }
   
    func updateName(nameChange: String){
        self.name = nameChange
        print("Name has been changed to  \(nameChange)")
    }
}

//let child = Child("David", marks: [5, 5, 4])
let parent = Parent("Ms. Red")
let child = parent.initaliseChild(childName: "MyBoy", parent: parent)
let child2 = parent.initaliseChild2(childName: "Atreus", parent: parent)
child.name = "NOTMYBOY"
//print(parent.getChildMarks())
print(child.printParentName(name: "Atreus2"))
