import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    weak var window: NSWindow!
    func applicationDidFinishLaunching(aNotification: NSNotification) {
        // Insert code here to initialize your application
        Swift.print("hello world")
        
        //continue here
        
    }
    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
}