# runner_lib

Shows how to use Flutter app as iOS library. Very experimental. The project was created following these instructions:

1. Create flutter app as usual and run it once on iOS simulator.
2. Open Xcode workspace and add new framework. For my purposes I will name it RunnerLib.
2. Change deployment target of that framework to be the same as for Runner. Also disable bitcode.
3. Change target membership of App.framework and Flutter.framework to RunnerLib.
4. Create Launcher class with one static method: `+ (void)launchFrom:(UIViewController *)parent`, this what should create a FlutterViewController and present it.
5. Rewrite the Runner to use Launcher class. Replace FlutterAppDelegate with standard AppDelegate, make ViewController, etc. It should look like standard native iOS project, so you could create one and copy over AppDelegate, storyboard and ViewController.
6. Call launchFrom method in your view controller, in viewDidAppear or as IBAction on a button.
7. You should be able to build the Runner and see that flutter screen appears.
8. Now, if you build the Runner app, you can open the crated Runner.app, and see that Frameworks directory contains 3 frameworks: App, Flutter and Runner.
9. You will need to have two sets of frameworks: one set for simulator, compiled in debug mode, and another set for devices - archived. Getting debug frameworks is pretty easy, just compile from Xcode and inspect the product. Archived frameworks are harder, I recommend doing `xcodebuild archive` with disabled signing.
10. Your users will have to configure their project to use correct frameworks depending on device. Possibly this step can be automated by Carthage and fat binaries, but I'm not sure. The problem is with App.framework which looks completely different on device than on simulator.