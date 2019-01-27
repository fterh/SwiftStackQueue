// Copyright (c) 2018 NUS CS3217. All rights reserved.

/**
 A generic `Queue` class whose elements are first-in, first-out.

 - Authors: CS3217
 - Date: 2018
 */
struct Queue<T> {
    private var arr = [T]()

    /// Adds an element to the tail of the queue.
    /// - Parameter item: The element to be added to the queue
    mutating func enqueue(_ item: T) {
        arr.append(item)
    }

    /// Removes an element from the head of the queue and return it.
    /// - Returns: item at the head of the queue
    mutating func dequeue() -> T? {
        if isEmpty {
            return nil
        }

        return arr.removeFirst()
    }

    /// Returns, but does not remove, the element at the head of the queue.
    /// - Returns: item at the head of the queue
    func peek() -> T? {
        if isEmpty {
            return nil
        }

        return arr.first
    }

    /// The number of elements currently in the queue.
    var count: Int {
        return arr.count
    }

    /// Whether the queue is empty.
    var isEmpty: Bool {
        return arr.isEmpty
    }

    /// Removes all elements in the queue.
    mutating func removeAll() {
        arr.removeAll()
    }

    /// Returns an array of the elements in their respective dequeue order, i.e.
    /// first element in the array is the first element to be dequeued.
    /// - Returns: array of elements in their respective dequeue order
    func toArray() -> [T] {
        return arr
    }
}
