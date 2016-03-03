# Open on...

Open the current page on another device.

I originally wrote this for my Kindle (2010), which made transferring web content much easier than typing on a lackluster keyboard.  Fast-forward to 2016, and I'm still using this little app.  I've found it more reliable and useful than the Google-made solution for Chrome and the Mozilla-made solution for Firefox.

## Features

* **Browser and operating system independent.**  Doesn't depend on anything but bookmarklets and bookmarks.  Platforms on which I've used it:  Kindle, Mac OS X, iOS, Ubuntu, Android, Wii, Windows.
* **Simple authentication.**  Single user.  Set it up once on each device and forget about it.
* **Dead simple.**  About 40 lines of Ruby and a line of JavaScript.

NOTE: opening a URL from another device is always done manually, but in my experience, that means it's more reliable.

## Installation

### Heroku

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

### Other hosts

* Unpack this app on a Ruby-enabled web host.
* Write a `.env` file.  Look at `.env.sample` for an example.

### Bookmarks

* Install your bookmark and bookmarklet.  Typically this is done via drag-and-drop, but it may vary base on your system (especially on mobile).
* Run the "Open on Device" bookmarklet on one device and then "Open from Device" on another.  (You have to do "Open on Device" at least once to start off.)  

## Tips

* Android/iOS: Add a bookmark for "Open from Device" to your home screen for easy access.
* Chrome (Android and iOS) does support bookmarklets, but the UI isn't that great.  You have to type "Open on" in the address bar to get it to appear.
* Kindle: make it your first bookmark for easy access.  Unfortunately, the UI isn't great, so you may have to remove other bookmarks to make this happen.

## Gotchas

CORS-enabled sites (like GitHub) block the execution of bookmarklets.  That prevents this solution from working.  Use the manual entry instead.
