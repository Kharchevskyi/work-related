//: [Previous](@previous)
//
//struct Stack<Element> {
//    private var storage: [Element] = []
//
//    init() { }
//
//    public mutating func push(_ element: Element) {
//        storage.append(element)
//    }
//
//    @discardableResult
//    public mutating func pop() -> Element? {
//        return storage.popLast()
//    }
//}
//
//
//enum WordMachineOperation {
//    case dup, pop, plus, minus, accept(_ value: Int)
//}
//
//protocol WordMachineParserType {
//    func parse(_ string: String) -> [WordMachineOperation]
//}
//
//struct WordMachineParser {
//    func parse(_ string: String) -> [WordMachineOperation] {
//        return string.split(separator: " ")
//            .compactMap { operationFrom($0) }
//    }
//
//    private func operationFrom(_ string: Substring) -> WordMachineOperation? {
//        if let value = Int(string) {
//            return .accept(value)
//        }
//        switch string {
//        case "DUP": return .dup
//        case "POP": return .pop
//        case "+": return .plus
//        case "-": return .minus
//        default: return nil
//        }
//    }
//}
//
//
//
//
////
////protocol WordMachineEngineType {
////    func dup()
////    func pop()
////    func plus()
////    func minus()
////    func accept(_ value: Int)
////}
//
//final class WordMachineEngine {
//    private let parser: WordMachineParserType
//
//    init(parser: WordMachineParserType = WordMachineParser()) {
//        self.parser = parser
//    }
//
//    func handle(input: String) -> Int {
//        var storage = Stack<Int>()
//        let operations = parser.parse(input)
//
//        operations.forEach {
//            switch $0 {
//            case let .accept(element):
//                storage.push(element)
//            case .dup: break
//            case .minus: break
//            case .plus: break
//            case .pop: break
//            }
//        }
//
//
//        return 0
//    }
//}
//
//let example1 = "13 DUP 4 POP 5 DUP + DUP + -"
//let input = "13"
//WordMachineEngine().handle(input: input)


import Foundation

protocol MyProtocol {
    func a()
}

class MyStruct: MyProtocol {

}

extension MyStruct {
    func a() {
        print("in struct")
    }
}

extension MyProtocol {
    func a() {
        print("in protocol")
    }
}

let mystruct: MyProtocol = MyStruct()
let mystruct2 = MyStruct()

//let proto: MyProtocol = mystruct

mystruct.a()
mystruct2.a()
//proto.a()
 
