//: [Previous](@previous)

import Foundation
import PlaygroundSupport

PlaygroundPage.current.needsIndefiniteExecution = true

func serialExample() {
    let backgroundQueue = DispatchQueue.global(qos: .background)

    backgroundQueue.async {
        (0...5).forEach {
            print("🎤 \($0)")
        }
    }

    backgroundQueue.sync {
        (0...5).forEach {
            print("🎹 \($0)")
        }
    }

    DispatchQueue.global(qos: .userInitiated).async {
        (0...5).forEach {
            print("🏵 \($0)")
        }
    }
}

func concurrentQueues() {
    let queue = DispatchQueue(
        label: "test.queue",
        qos: .userInitiated,
        attributes: .concurrent
    )

    queue.async {
        (0...5).forEach {
            print("🌕 \($0)")
        }
    }

    queue.async {
        (10...15).forEach {
            print("🌎 \($0)")
        }
    }

    queue.async {
        (100...105).forEach {
            print("💥 \($0)")
        }
    }
}

func dispatchGroup() {
    let group = DispatchGroup()
    let queue = DispatchQueue.global(qos: .userInitiated)
    queue.async(group: group) {
        print("Start job 1")
        Thread.sleep(until: Date().addingTimeInterval(10))
        print("End job 1")
    }
    queue.async(group: group) {
        print("Start job 2")
        Thread.sleep(until: Date().addingTimeInterval(2))
        print("End job 2")
    }

    if group.wait(timeout: .now() + 5) == .timedOut {
        print("I got tired of waiting")
    } else {
        print("All the jobs have completed")
    }
}

func semaphore() {
    let group = DispatchGroup()
    let queue = DispatchQueue.global(qos: .userInitiated)
    let semaphore = DispatchSemaphore(value: 4)

    for i in 1...10 {
        queue.async(group: group) {
            semaphore.wait()
            defer { semaphore.signal() }
            print("Downloading image \(i)")
            // Simulate a network wait
            Thread.sleep(forTimeInterval: 3)
            print("Downloaded image \(i)")
        }
    }

}

func raceCondition(_ emitate: Bool) {

    var value = "😇"

    func changeValue(variant: Int) {
        sleep(1)
        value += "🌎"
        print("\(value) + \(variant)")
    }

    let queue = DispatchQueue.global()

    if emitate {
        queue.async {
            changeValue(variant: 1)
        }
    } else {
        queue.sync {
            changeValue(variant: 1)
        }
    }

    value

    value = "💥"
    queue.sync {
        changeValue(variant: 2)
    }
    value
}

//dispatch_queue_t queue = dispatch_queue_create("my.label", DISPATCH_QUEUE_SERIAL);
//dispatch_async(queue, ^{
//    dispatch_sync(queue, ^{
//        // outer block is waiting for this inner block to complete,
//        // inner block won't start before outer block finishes
//        // => deadlock
//    });
//
//    // this will never be reached
//});

func deadlock(_ isDead: Bool = false) {
    let queue = DispatchQueue(label: "")
    queue.async {
        print("async")
        if isDead {
            queue.sync {
                print("sync")
            }
        } else {
            queue.async {
                print("sync")
            }
        }

        print("TYT")
    }
}

//serialExample()
//concurrentQueues()
//dispatchGroup()
//semaphore()
deadlock()
//raceCondition(true)


