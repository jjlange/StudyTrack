# Welcome to StudyTrack  📱
Source code of StudyTrack, a Track &amp; trace app for universities.

## Main source code  &nbsp; 🛠
The app is written in Swift (99.6%) and small piece of Ruby (0.4%) for the package manager to import the two important frameworks (Alamofire & SwiftyJSON). You can find the actual written source code for the iOS (& maybe macOS application 😉) in the 'TrackAndTrace' folder.

## How do I run this app?  &nbsp; ▶️
### You will need a device running macOS Catalina or Big Sur to install it on your iPhone!
Download XCode from the Mac App Store & this project from GitHub. Make sure you're running the backend server first and then open the Xcode .xcworkspace file.
Edit the file 'Server.swift' (in the 'TrackAndTrace' root directory) and change the variable 'serverURL' to your local IP or remote server IP.
Plug in your phone (or choose a simulator) and click on the play button (top left menu bar)

## What about iPad?&nbsp; 💖
#### You should be able to run the app on all iPads running iPadOS 14.
#### Note: Make sure you tick the checkbox 'iPad' in your Xcode project settings.

## Does it run on Mac and the Apple Watch too?&nbsp; 🖥 &nbsp;⌚️
#### We haven't tried that yet. Though since it's written in SwiftUI, it might run on macOS with some small tweaks!
#### You won't be able to run it on an Apple Watch yet, since watchOS is using different UI components. This might change in the future.
#### WatchKit allows you to add a separate extention to your app though. This would allow you to add an Apple Watch application with its own views. You will still be able to access the controllers, models, and most importantly custom UI components from the original iOS app folder. 
