# Critical Mass Internship Tasks

Benjamin Low

## Work/Project Examples

__As I have been working on nothing but Xcode projects these past months, I figure it might be best for me to reference them.__

### YMCA iOS Application

On January 2019, YMCA Calgary came to my instructor, requesting for a mobile app redesign. Their original app was outdated to say the least. Tabs brought you to webpages, "Hamburger" button pushes the screen to the side instead of overlaying on top of it, all categories was packed into the "Hamburger" menu, putting a class into your phone's calendar makes you subscribe to the class (meaning all instances of that class in the future would also be sent to the calendar) with no other choice, and various other small issues. Their app was not very popular with both the Apple and Android crowd, averaging about 1.5 - 2.5 stars. Me and my other group members got assigned to the project.
- The main goal of YMCA Calgary is to get a design down and make it as modern as possible. So me and my other group members all took the roles of UI Designer and started coming up with our own designs and then propose them to the clients to see from each design, which parts they like.
- After gathering feedback from the clients and anyone else that we could ask, I eventually became the Head UI Designer and combined all the designs into one. If a design change is proposed, they needed to go through me.
- We went to coding the actual app with Swift in Xcode after the prototype phase. (The plan was to start with iOS first for the beta and then eventually to Android with Android Studio)
- My role in the Xcode project is to work on the Home Page and the Schedule page. 

Unfortunately, we cannot show our code to the public, but I can provide some screenshots and descriptions.

#### Prototype

![alt text][prototype-home] Adobe XD prototype for the Home page

![alt text][prototype-profile] Adobe XD prototype for the Profile page

#### iOS App

![alt text][homepage] iOS Home page

![alt text][profile] iOS Profile page

### Campus MApp

A small startup that started in University of Calgary. Their product is a mobile app that would help students traverse through their respective campuses. Using 3D models of buildings, they hope to help students better find their classrooms easier and maybe help out others who came to the University of Calgary for a specific event.
- In order to make the app better suited for students, they wanted to add an in-app schedule that users would be able to refer to. Clicking on a class in the schedule would lead the user to their desired class in the map.
- Took on the project along with my other group members and took on the role of Head UI Designer.
- Drew the designs on paper first and when group members came to an agreement on what the app should look like, went on to prototype in Adobe XD.
- After getting feedback from clients and anyone else, went on to work on the front end of the app using Xcode, more particularly the schedule.
- App uses OCR to read screenshots of students' school schedules and adds those courses to the app's schedule. User also has the ability to manually add their courses.

The project is at https://github.com/ColinThompson1/CampusMap

In order to run the project, Xcode is needed. Go into the folder "CMScheduleExt" and open "CMScheduleExt.xcodeproj".

#### Screenshots

![alt text][schedule] Campus MApp Schedule

![alt text][classes] Campus MApp Class Picker

### Kobun-Mobile

An app that I created in 1 day. Not particularly impressive design-wise for an app, but it was more a challenge I took on during my free time. Based on Professor X.Jie Yang's [Kobun-Online](https://people.ucalgary.ca/~xyang/kobun/kobun.html)
- Kobun-Online is website that contains not only information about classical Japanese, but also contains drills that help students get used to certain grammar points of classical Japanese.
- Programmed the app in Swift for iOS
- For now, the app only has drills from Kobun-Online, but I do plan to redesign the app one day to also include more space for the classical Japanese info pages.
- Reads from a JSON file to get the drills. To add more drills, just edit the JSON file.

#### Screenshots

![alt text][kobun-home] Kobun-Mobile Home Page

![alt text][kobun-drills] Kobun-Mobile Drills

## Inspiration

### Table Views for Xcode

https://www.smashingmagazine.com/2017/11/designing-app-idea-sketch-xcode/

Although pretty basic, this article was what got me started on how to properly utilize table views in Xcode. Particularly, how you can use the cells of the table to display more than just text and images. You can put in other views inside the cell and then add more stuff into the view, like maybe another table view for some reason.

When I first started out with Xcode, I followed this tutorial (https://developer.apple.com/library/archive/referencelibrary/GettingStarted/DevelopiOSAppsSwift/CreateATableView.html), so I had the notion that table view cells were only just images and text. Then I saw "CELL FIVE" of the article, where they put a scroll view into a cell, meaning that you can put in other subviews inside a cell. It blew my mind and rocked my world. It made me realize I could do so much more with table views in Xcode. I usually send this article to anyone who is new to Xcode and working with table views.

### Refactoring Techniques

https://sourcemaking.com/refactoring

If there are any specific parts that I could say inspire me, I would say all of the article and it's categories. I never really paid much attention to the design of my code earlier on in my academic years, but after taking a class on programming techniques, I found this neat article that pretty much complies all the refactoring techniques that I should use. Pretty much use this as a bible on how to make code run faster and look cleaner. 

## Focus

Every project that I worked on is always self scheduled and always at my own pace, there are no specific deadlines for specific parts of the projects, just one single deadline. Everything can be done all just before the deadline and it would still be okay as long as the end result is good. I always wanted to get a feel of what it is like to work in the industry, to see whether the experience is any different compared to working by my own time. So if I ever do get the internship, I want to spend as much time as I can talking with the other members, especially in the programming field, to get a hang on how to become a proper member of the tech industry. Most of the code that I produce is at the Academic level, so until the end of the internship, I want to get a hang on how to program at an industry level. All of that is a long winded way of saying that out of the internship, I hope to build character and improve myself. Learning a few practices limited to Critical Mass would also be amazing.

Also, it would be a good experience to work with people in different fields as I am. Most of the groups that I am in are mostly on the tech side. It would be an amazing experience to work with a proper design team.

## Code Challenge

https://codesandbox.io/s/5vv6wm4jvn

First, I parse the string into an array by checking for the next line. The array is const, since it should not be changed after parsing. Then using the function, setInterval(), I call the function, appendLine() for every 1.5 seconds. appendLine() is a function that creates a "li" node for each item in the array and appends it to the unordered list "lyrics-list". If the amount of iterations equals the length of the array, stop the loop.

For further details on the code, see the comments in the CodeSandbox.


[prototype-home]: https://github.com/Grimsly/Tasks/blob/master/Prototype%20Homepage.png
[prototype-profile]:
[homepage]:
[profile]:
[schedule]:
[classes]:
[kobun-home]:
[kobun-drills]:
