// Copyright (c) 2018 NUS CS3217. All rights reserved.

/**
 A generic `Stack` class whose elements are last-in, first-out.

 - Authors: CS3217
 - Date: 2018
 */
public struct Stack<T> {
    private var arr = [T]()

    /// Adds an element to the top of the stack.
    /// - Parameter item: The element to be added to the stack
    mutating func push(_ item: T) {
        arr.append(item)
    }

    /// Removes the element at the top of the stack and return it.
    /// - Returns: element at the top of the stack, or nil if stack is empty
    mutating func pop() -> T? {
        if isEmpty {
            return nil
        }

        return arr.removeLast()
    }

    /// Returns, but does not remove, the element at the top of the stack.
    /// - Returns: element at the top of the stack
    func peek() -> T? {
        if isEmpty {
            return nil
        }

        return arr.last
    }

    /// The number of elements currently in the stack.
    var count: Int {
        return arr.count
    }

    /// Whether the stack is empty.
    var isEmpty: Bool {
        return arr.isEmpty
    }

    /// Removes all elements in the stack.
    mutating func removeAll() {
        arr.removeAll()
    }

    /// Returns an array of the elements in their respective pop order, i.e.
    /// first element in the array is the first element to be popped.
    /// - Returns: array of elements in their respective pop order
    func toArray() -> [T] {
        return arr.reversed()
    }
}
