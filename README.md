# iOS Project Template

What's in this template?

* No boilerplate besides `AppDelegate.swift`
* No SceneDelegate
* No Storyboard
* No Xcodeproj
* [Mint](https://github.com/yonaskolb/Mint) for managing tooling dependencies
* [Xcodegen](https://github.com/yonaskolb/XcodeGen) to generate the `.xcodeproj`
* [SwiftFormat](https://github.com/nicklockwood/SwiftFormat) to format the code
* [git-format-staged](https://github.com/hallettj/git-format-staged) inside the `Scripts/` folder to format only staged files

It also comes with a few useful scripts in [Makefile](Makefile)

```
// Rename all "MyApp" instances to something else
make setup

// Bootstrap
make bootstrap 

// Generate .xcodeproj
make proj

// Format codebase
make format

// Format staged files
make format-staged

// Setup git-precommit hook that format staged files
make githooks
```

## Getting Started

```sh
git clone https://github.com/alephao/xcode-ios-template.git
cd xcode-ios-template

make setup # Rename MyApp to your chosen project name
make bootstrap # Install dependencies
make proj # Generate xcodeproj
```