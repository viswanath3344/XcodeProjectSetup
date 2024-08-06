import UIKit

// MARK: Ref: https://samwize.com/2023/01/18/disconnect-your-app-from-unit-testing/
private func delegateClassName() -> String? {
    if NSClassFromString("XCTestCase") != nil { // Unit Testing
        return nil
    } else { // App
        return NSStringFromClass(AppDelegate.self)
    }
}

UIApplicationMain(CommandLine.argc, CommandLine.unsafeArgv, nil, delegateClassName())
