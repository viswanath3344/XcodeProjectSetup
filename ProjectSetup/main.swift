import UIKit

private func delegateClassName() -> String? {
    if NSClassFromString("XCTestCase") != nil { // Unit Testing
        return nil
    } else { // App
        return NSStringFromClass(AppDelegate.self)
    }
}

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, delegateClassName())
