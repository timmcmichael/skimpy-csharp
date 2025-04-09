# All IDEs
(Slideshow created in Canvas)

A C# program is organized into three different parts: a file, a project, and a solution.
This can be a little confusing for beginners, but it's pretty straightforward.
A file is just a single file that contains code--just a like a Word document with your History essay.
A project is a collection of files that are all related to each other. So maybe that's like a folder with all of the Word documents for your History class.
And a solution is a collection of projects that are all related to each other. That would be the USB drive that has folders for all of your classes. Just make sure you don't lose it, because there's no way your History professor believes that.

We're going to make a solution for an assignment, like the Module 04 Programming Assignments, and within that we'll have a project for each program we write. Many of my assignments have Part A and Part B, so those will be our projects within the Module 04 Programming Assignments solution.

The way you create your solution and project will depend on what IDE you're using.

# Starting with C# in Visual Studio
(record on the main window so popups work)

If you're using Visual Studio Community--and make sure you're not confusing that with Visual Studio Code, which is a different program--you have a few different ways to create a new project. And notice that we're creating a project, not a solution. The solution is created when we create the project--that's the kind of stuff that can make this a little confusing.
If you have this start screen, you can get started by clicking on the link that says "Create a new project".
If you don't have that screen, you can also just go to the "File" menu and select "New" and then "Project...".
And you can also use the keyboard shortcut `Ctrl+Shift+N`.

Visual Studio is used for all kinds of different work, so we have a few different things to watch for when we're creating our project.
We're using C#, so make sure you select that from the list of languages.
The type of project we're creating is called a "console application." On my system, that's right here at the top--probably because I've already used that before. But an easy way to find that template is by typing "console" in the search box.
Make sure you're picking the one that says it'll run on Windows, macOS, and Linux, since I sometimes use my Mac to grade your work. If you select the one that says ".NET Framework"), I won't be able to open it.

Now, if you don't have the Console App template as an option, you might be missing part of the installation, called a "workload".
In that case, go all the way to the bottom to where it says "Not finding what you're looking for?" and click on the "Install more tools and features" link.
That will open up the Visual Studio Installer, where you can add the ".NET desktop development" workload.

Once we have the Console App template selected we'll click *Next*.

Here's where we have to start thinking about our project structure. For now, we can think of our Project Name as the program we're writing. But, I don't really want a project name like "Module 3 Lab Part A". In programming, we try to use names that describe what something does. So if you're writing a program that calculates the area of a circle, you might name your project "CircleAreaCalculator". That's a little long, but it's descriptive. For this first project, I'm going to name it "FirstProgram".

The location doesn't have any impact on me when I grade it. You're going to zip up the files and submit them, and it doesn't matter where they were on your computer. Of course, you do need to be able to find them later. My suggestion is to make a folder in your Documents directory called CIS162AD, and keep all of your work in there. Wherever you put it, make sure you back it up occasionally, and please don't save all of your work on a usb drive. I always feel bad when students lose them, but me feeling bad doesn't help the zero you're going to get.

Now, the Solution Name defaults to the same name as your project. Remember that this is a collection of related projects, and this is where we can identify the assignment we're working on. Module 04 Labs or whatever. This is probably Module 01 Labs Part A for you so that's what I'll use, but name it for whatever assignment you're working on.

We'll leave this box unchecked and then go on to the next screen.

This last page will stay the same for all of our projects, at least for now. You'll want to use the latest version of .NET that has either standard or long-term support. If this video is old, that won't match my version here, but that's okay.

I'm going to talk about top-level statements in a few minutes, but we'll leave this unchecked since that makes it easier to start writing code. And we can ignore the rest of the checkboxes. Let's go ahead and click through to create the solution and project.

Visual Studio will grind away on that for a moment and create the project for you. Most of our window is taken up by the code editor, but the Solution Explorer over here on the right is really important since that's where we can see all of our files and projects. You can also see the properties of the project down here at the bottom, which we'll will look at later.

Visual Studio is really flexible. I can grab panels and rearrange them or close them completely. So, a really important tip. If you mess up your layout, just go to the "Window" menu and select "Reset Window Layout". That'll put everything back to the default layout.

In our solution explorer, we have a visual representation of that structure. The top is our solution, and under that is our project, and finally, our file. There's some other stuff here, but that's all we need to worry about. The default file name is Program.cs, and that .cs stands for c-sharp. You can change the file name if you want by right clicking and selecting that option, but make sure you keep the .cs at the end.

By tradition, the first program we write in a new language is code that outputs "Hello, World!", so the template actually starts there. I'm going to go ahead and delete that so we can start from scratch.

To produce output, I'm going to use something called the `Write` method. The statement to use that begins with the word Console, followed by a period, and then the word Write.

The first lesson in programming is that details matter. Everything has to be spelled correctly, and everything is case-sensitive. So, Console has to be spelled with a capital C, and Write has to be spelled with a capital W. Visual Studio uses color-coding to show that it recognizes what we're typing, and if it doesn't recognize something, it'll underline it in red.

In order for Write to output something, it has to know what we want it to output. To give it that information, we put parentheses on the end. In the parentheses, we can put quotation marks and then type the message we want to display. So, "Hello, C#!" in quotes. Again, details matter--the message has to have quotes on both sides, and the parentheses have to be there.

In C#, a statement ends with a semicolon, a lot like a period at the end of a sentence. I'm missing that, so I have a little red underline. I can try to run the program by clicking the green Start button up here, but because of the error, it can't run. 

This popup is really important, especially because we're all kind of conditioned to just instantly close these kinds of things without paying much attention. It's saying that my code can't run, and it's asking if I want to run an old version of the code. In this case, I don't really have any old code because I just created the program, but even if I did, selecting "Yes" is a really bad idea. If I hit Yes, it's not running what I've got on the screen, it's running something I did before, and that's really confusing. The worst thing a student can do is check that little box and then click Yes, because now it's just going to run that old code without even letting us know, and it'll be pretty much impossible to figure out what's going on. The best bet is probably to check the box and his "No". I'll leave it unchecked since I use this computer to record videos like this one.

You can also see that Visual Studio gives you a list of your errors in a panel at the bottom of the screen.

So, we're missing a semicolon at the end of the line. When I add that, my underline goes away and I can try running again. This is actually telling Visual Studio to compile my code and send it to the runtime to execute.

Our program runs in a console window, and I can see my output right here at the top. After it executes my code, it pauses until I hit a key, so I have time to read through what happened. Incidentally, that's why this is called a console application--it runs in an old-school text console instead of a pretty graphical interface, which is a lot more complicated.

This really isn't an impressive program, but if you're new to coding, this is kind of a big deal--you've created your first computer program.

Okay, let's try a couple more things with this code. I can add another line with a different message, so I'll put Console.Write("Welcome to CIS162AD!");. I'll run the program again, and now I see both messages in the output window. But notice that the messages are jammed together on the same line. The Write method doesn't hit enter at the end of the line, the cursor just waits until we output more. Since we often want to output a message and then move to the next line, there's another method called `WriteLine`. It works the same way, so I'll just change that Write to WriteLine and run it again. 

Another thing we need to know right away how to use code comments. Comments are notes that we put in our source code. They get ignored by the compiler, so we can put whatever we want in them and it won't affect the program. To write a comment on one line, just put two slashes. Visual Studio shades it green to show that it's a comment, and the rest of this line just gets skipped. 

[// My first line of code!]



If you want to write a comment that uses more than one line, you indicate that with a slash and an asterisk--or star--and then you end it with an asterisk and a slash. 

We always put a multi-line comment--or what I call a comment block--at the top of our program to provide some information about what it is and what it does. When you're coding for an assignment, I have a very specific format for it and you should check the directions that. But even outside of class, the best practice is to describe the program a little.

[/* This is a multi-line comment. It can be as long as you want. */]

Now, I'm just going to run this again to make sure I haven't messed up anything.

Okay, so our first program is done. But many assignments require two separate programs, so we need to know how to correctly add a project to this solution. And, there's one thing I need to come back to. Remember that checkbox that asked about using top-level statements?  

A program in C# is actually a little more complicated than that first example we tried. A program has to have a class, and that class has to have a method called Main. That's where the program starts running. In order to make it easier, we can use top-level statements, and then the compiler will create that other stuff for us. 

// TODO: Rewrite to add a project to same solution
But that's a pretty new feature, and a lot of example code out there still does it the old way, so we'll try that really quickly. 


## RESUME HERE

To try it, we're going to add a new project. Now, this is closely related to the one I've already created--it's part of the same assignment in my class. So I should add the new project to my existing solution. Again, there are a couple of ways to do this.

I can go to the File menu and select New and Project.

Or, I can go to my solution explorer and right-click on the solution, which is at the top. From that menu, select Add, and then new project.

Either way, you'll get the project creation screen again. Every program we make for the time being is going to be a console application, so I'll select that again and make sure I pick the one that'll run on Windows or Mac.

This is going to be a program that outputs some song lyrics, so I'll name the project "SongLyrics". If you added the new project by right-clicking on the solution in the Solution explorer, it will know that we're putting it in that solution. But if you go through the menu at the top, you'll have a dropdown to select where to put this. We don't want to create a new solution, so I'm going to select "add to solution". 

Here's that checkbox for the option to not use top-level statements, so I'll check that box and click through.

After I click through to create the project, we're back at our generic Hello World code. If I click on this icon over here on the left, I can convert this to a Program.Main style of program. 

This is what a C# program actually looks like. With top-down statements, this is all hidden from us and generated when we compile. It looks a little confusing, but it's really no big deal. I just have to be careful about where I put my code. It doesn't go at the top of the file, it goes inside the Main method, which is right here. As long as I click here before I start typing, I'm good to go. 

My comment block still goes all the way at the top, so I'll do that now before I forget.

And now back to the Main method, I can delete the template code and write statements to output those song lyrics.

And now I'll run that to make sure it works. But, it's still running my code from the other program. Since this solution now has two projects, we have to specify which one we are running. Go to the Solution Explorer and right click on the project you want to run. About halfway down the context menu is "Set as Startup Project". The startup project is what runs when we start our program. It's probably tough to see on the video, but it makes the startup project bold. And I can change it any time I want.

And by the way, when I click on something in Solution Explorer, it shows that in the editor. So I can just click back on Program.cs to see my code. 

Let's run this.

And it looks like everything is good here. 

Notice, by the way, that I now have tabs open at the top so I can see either program. That's part of the reason why we have the code block at the top--we can tell what we're looking at. But you can also just go over to the solution explorer and click on the one you want, to make sure it's correct. And you can close the one you're done with.

There's no significant difference between the two ways of writing a program, and you're allowed to use either one. My expectation is that students will use top-level statements because it's less confusing, but later in the course we'll want to organize things into classes and methods, so we'll be seeing more of that older style down the road.

# Starting with C# in Visual Studio Code

I'm using Visual Studio Code on a mac, but it will work the same on Windows or Linux.

Before we create our program in VS Code, we should decide where we're going to save our work and create a folder. The location doesn't have any impact on me when I grade it. You're going to zip up the files and submit them, and it doesn't matter where they were on your computer. Of course, you do need to be able to find them later. My suggestion is to make a folder in your Documents directory called CIS162AD, and keep all of your work in there. Wherever you put it, make sure you back it up occasionally, and please don't save all of your work on a usb drive. I always feel bad when students lose them, but me feeling bad doesn't help the zero you're going to get.

In VS Code, we can now create our project. Click the icon for the Explorer panel, and you'll see a few different choices to get started. If you see a list of files and folders instead, it means you already have something open. Just go to the File menu and select Close Folder. Make sure you're not just closing a file--VS Code considers a folder to be a project, so you have to close the old folder to start a new project. 

Click the button to create a .NET Project. You can also go to the gear icon and select the Command Prompt, and when that opens, type ".NET" and that search will find the option to create a new project.

Either way, you'll now need to select the type of project you want, because C# can be used for a wide variety of things. We're going to pick the Console App template; I you don't see it, just type "console" in the search box and the filter will help you find it.

Next, it wants to know where to create the project, so navigate to the folder you created and select that. Finally, it'll ask for a name for the project. 

Here's where we have to be careful. It says it's asking for the project name, but it's really going to give the solution and the project this name, and we want those to be different. It's easier to change the project name later, so we're going to put our solution name here. Remember that this is a collection of related projects, and this is where we can identify the assignment we're working on. Module 04 Labs or whatever. This is probably Module 01 Labs for you so that's what I'll use, but name it for whatever assignment you're working on. Then hit enter to create it.

VS Code will take a moment to create this new folder and the parts of the project that go inside it, and then it'll open.

Down here at the bottom I'm going to expand a panel called Solution Explorer. This gives us a really useful look at our entire solution. In fact, I find it more useful than the folder view up at the top, so I'm going to collapse that.

The Solution Explorer is a visual representation of that file structure. The top is our solution, and under that is our project, but as I mentioned they've been given the same name. So I'm going to right-click on the second one, which is the project, and rename that. We can think of our Project Name as the program we're writing. But, I don't really want a project name like "Module 3 Lab Part A". In programming, we try to use names that describe what something does. So if you're writing a program that calculates the area of a circle, you might name your project "CircleAreaCalculator". That's a little long, but it's descriptive. For this first project, I'm going to name it "FirstProgram".

And within that, our file. There's some other stuff here, but that's all we need to worry about. The default file name is Program.cs, and the .cs stands for c-sharp. You can change the file name if you want, but make sure you keep the .cs at the end.

Go ahead and click on that file name to open it in the code editor.



By tradition, the first program we write in a new language is code that outputs "Hello, World!", so the template actually starts there. I'm going to go ahead and delete that so we can start from scratch.

To produce output, I'm going to use something called the `Write` method. The statement to use that begins with the word Console, followed by a period, and then the word Write.

The first lesson in programming is that details matter. Everything has to be spelled correctly, and everything is case-sensitive. So, Console has to be spelled with a capital C, and Write has to be spelled with a capital W. Visual Studio uses color-coding to show that it recognizes what we're typing, and if it doesn't recognize something, it'll underline it in red.

In order for Write to output something, it has to know what we want it to output. To give it that information, we put parentheses on the end. In the parentheses, we can put quotation marks and then type the message we want to display. So, "Hello, C#!" in quotes. Again, details matter--the message has to have quotes on both sides, and the parentheses have to be there.

In C#, a statement ends with a semicolon, a lot like a period at the end of a sentence. I'm missing that, so I have a little red underline. I can try to run the program by clicking the white Start button up here, but because of the error, it can't run. 

This popup is really important, especially because we're all kind of conditioned to just instantly close these kinds of things without paying much attention. It's saying that my code can't run, and it's asking if I want to run an old version of the code. In this case, I don't really have any old code because I just created the program, but even if I did, selecting "Yes" is a really bad idea. If I hit Yes, it's not running what I've got on the screen, it's running something I did before, and that's really confusing. You always want to stop if you see this popup.

So, we're missing a semicolon at the end of the line. When I add that, my underline goes away and I can try running again. This is actually telling Visual Studio to compile my code and send it to the runtime to execute.

Our program runs in a window at the bottom of our screen. First there's a big chunk of text that is the command VS Code is using to compile and run our code, and under that is the output. It kind of gets buried in there, and then when the program is done, it actually gives us a command line. If you're familiar with bash or powershell, this is familiar to you. If not, just think of it as a way to interact with the computer using text commands. 

Notice that this panel has tabs, and the one we want is called Terminal. It's easy to accidentally click on a different one and get confused. If you want to close the terminal, just hover order the name on the right and click the trash can icon. It'll always reappear when you run it, but you can also just leave it open if it's not in the way. As a side note, we've actually got two terminals open. The top one is from when our code was compiled, and the second one is the one that's running our program.

This really isn't an impressive program, but if you're new to coding, this is kind of a big deal--you've created your first computer program.

Okay, let's try a couple more things with this code. I can add another like with a different message, so I'll put Console.Write("Welcome to CIS162AD!");. I'll run the program again, and now I see both messages in the output window. But notice that the messages are jammed together on the same line. The Write method doesn't hit enter at the end of the line, the cursor just waits until we output more. Since we often want to output a message and then move to the next line, there's another method called `WriteLine`. It works the same way, so I'll just change that Write to WriteLine and run it again. 

Another thing we need to know right away is how to use code comments. Comments are notes that we put in our source code. They get ignored by the compiler, so we can put whatever we want in them and it won't affect the program. To write a comment on one line, just put two slashes. Visual Studio shades it green to show that it's a comment, and the rest of this line just gets skipped. 

[// My first line of code!]

If you want to write a comment that uses more than one line, you indicate that with a slash and an asterisk--or star--and then you end it with an asterisk and a slash. 

We always put a multi-line comment--or what I call a comment block--at the top of our program to provide some information about what it is and what it does. When you're coding for an assignment, I have a very specific format for it and you should check the directions that. But even outside of class, the best practice is to describe the program a little.

[/* This is a multi-line comment. It can be as long as you want. */]

Now, I'm just going to run this again to make sure I haven't messed up anything.

That first program is done. Before we move on, we should make sure that the formatting of our code is correct. VS Code can help with that, but we have to configure it. Down in the bottom-left corner, click the gear icon and select Settings. The Settings panel has a bunch of common stuff at the top, but because there are so many things you can configure, it's easiest to just use the search bar. I'll search with the word "format", and one of the first things it finds is a setting called "Format on Save". I'll check this box, and now any time I save my file--which is done automatically whenever I run my program--VS Code will clean up my indenting and whitespace a little.


Okay, we've finished our program and cleaned up the formating, but many assignments require two separate programs. So we need to know how to correctly add a project to this solution. And, there's one other thing I need to show you.

# Varies from recording
A program in C# is actually a little more complicated than that first example we we just made. A program has to have a class, and that class has to have a method called Main. That's where the program starts running. In order to make it easier, we can use top-level statements, and then the compiler will create that other stuff for us. 

To create a new project wt


// TODO: Rewrite to add a project to same solution


# Starting with C# in JetBrains Rider

I'm using JetBrains Rider on a mac, but everything will be the similar on Windows or Linux versions of the program.

Before we create our program in Rider, we should decide where we're going to save our work and create a folder. The location doesn't have any impact on me when I grade it. You're going to zip up the files and submit them, and it doesn't matter where they were on your computer. Of course, you do need to be able to find them later. My suggestion is to make a folder in your Documents directory called CIS162AD, and keep all of your work in there. Wherever you put it, make sure you back it up occasionally, and please don't save all of your work on a usb drive. I always feel bad when students lose them, but me feeling bad doesn't help the zero you're going to get.

In Rider, we can now create our project. 







Click the icon for the Explorer panel, and you'll see a few different choices to get started. If you see a list of files and folders instead, it means you already have something open. Just go to the File menu and select Close Folder. Make sure you're not just closing a file--VS Code considers a folder to be a project, so you have to close the old folder to start a new project. 

Click the button to create a .NET Project. You can also go to the gear icon and select the Command Prompt, and when that opens, type ".NET" and that search will find the option to create a new project.

Either way, you'll now need to select the type of project you want, because C# can be used for a wide variety of things. We're going to pick the Console App template; I you don't see it, just type "console" in the search box and the filter will help you find it.

Next, it wants to know where to create the project, so navigate to the folder you created and select that. Finally, it'll ask for a name for the project. 

Here's where we have to be careful. It says it's asking for the project name, but it's really going to give the solution and the project this name, and we want those to be different. It's easier to change the project name later, so we're going to put our solution name here. Remember that this is a collection of related projects, and this is where we can identify the assignment we're working on. Module 04 Labs or whatever. This is probably Module 01 Labs for you so that's what I'll use, but name it for whatever assignment you're working on. Then hit enter to create it.

VS Code will take a moment to create this new folder and the parts of the project that go inside it, and then it'll open.

Down here at the bottom I'm going to expand a panel called Solution Explorer. This gives us a really useful look at our entire solution. In fact, I find it more useful than the folder view up at the top, so I'm going to collapse that.

The Solution Explorer is a visual representation of that file structure. The top is our solution, and under that is our project, but as I mentioned they've been given the same name. So I'm going to right-click on the second one, which is the project, and rename that. We can think of our Project Name as the program we're writing. But, I don't really want a project name like "Module 3 Lab Part A". In programming, we try to use names that describe what something does. So if you're writing a program that calculates the area of a circle, you might name your project "CircleAreaCalculator". That's a little long, but it's descriptive. For this first project, I'm going to name it "FirstProgram".

And within that, our file. There's some other stuff here, but that's all we need to worry about. The default file name is Program.cs, and the .cs stands for c-sharp. You can change the file name if you want, but make sure you keep the .cs at the end.

Go ahead and click on that file name to open it in the code editor.



By tradition, the first program we write in a new language is code that outputs "Hello, World!", so the template actually starts there. I'm going to go ahead and delete that so we can start from scratch.

To produce output, I'm going to use something called the `Write` method. The statement to use that begins with the word Console, followed by a period, and then the word Write.

The first lesson in programming is that details matter. Everything has to be spelled correctly, and everything is case-sensitive. So, Console has to be spelled with a capital C, and Write has to be spelled with a capital W. Visual Studio uses color-coding to show that it recognizes what we're typing, and if it doesn't recognize something, it'll underline it in red.

In order for Write to output something, it has to know what we want it to output. To give it that information, we put parentheses on the end. In the parentheses, we can put quotation marks and then type the message we want to display. So, "Hello, C#!" in quotes. Again, details matter--the message has to have quotes on both sides, and the parentheses have to be there.

In C#, a statement ends with a semicolon, a lot like a period at the end of a sentence. I'm missing that, so I have a little red underline. I can try to run the program by clicking the white Start button up here, but because of the error, it can't run. 

This popup is really important, especially because we're all kind of conditioned to just instantly close these kinds of things without paying much attention. It's saying that my code can't run, and it's asking if I want to run an old version of the code. In this case, I don't really have any old code because I just created the program, but even if I did, selecting "Yes" is a really bad idea. If I hit Yes, it's not running what I've got on the screen, it's running something I did before, and that's really confusing. You always want to stop if you see this popup.

So, we're missing a semicolon at the end of the line. When I add that, my underline goes away and I can try running again. This is actually telling Visual Studio to compile my code and send it to the runtime to execute.

Our program runs in a window at the bottom of our screen. First there's a big chunk of text that is the command VS Code is using to compile and run our code, and under that is the output. It kind of gets buried in there, and then when the program is done, it actually gives us a command line. If you're familiar with bash or powershell, this is familiar to you. If not, just think of it as a way to interact with the computer using text commands. 

Notice that this panel has tabs, and the one we want is called Terminal. It's easy to accidentally click on a different one and get confused. If you want to close the terminal, just hover order the name on the right and click the trash can icon. It'll always reappear when you run it, but you can also just leave it open if it's not in the way. As a side note, we've actually got two terminals open. The top one is from when our code was compiled, and the second one is the one that's running our program.

This really isn't an impressive program, but if you're new to coding, this is kind of a big deal--you've created your first computer program.

Okay, let's try a couple more things with this code. I can add another like with a different message, so I'll put Console.Write("Welcome to CIS162AD!");. I'll run the program again, and now I see both messages in the output window. But notice that the messages are jammed together on the same line. The Write method doesn't hit enter at the end of the line, the cursor just waits until we output more. Since we often want to output a message and then move to the next line, there's another method called `WriteLine`. It works the same way, so I'll just change that Write to WriteLine and run it again. 

Another thing we need to know right away how to use code comments. Comments are notes that we put in our source code. They get ignored by the compiler, so we can put whatever we want in them and it won't affect the program. To write a comment on one line, just put two slashes. Visual Studio shades it green to show that it's a comment, and the rest of this line just gets skipped. 

[// My first line of code!]

If you want to write a comment that uses more than one line, you indicate that with a slash and an asterisk--or star--and then you end it with an asterisk and a slash. 

We always put a multi-line comment--or what I call a comment block--at the top of our program to provide some information about what it is and what it does. When you're coding for an assignment, I have a very specific format for it and you should check the directions that. But even outside of class, the best practice is to describe the program a little.

[/* This is a multi-line comment. It can be as long as you want. */]

Now, I'm just going to run this again to make sure I haven't messed up anything.

Okay, so our first program is done. But many assignments require two separate programs, so we need to know how to correctly add a project to this solution. And, there's one thing I need to come back to. Remember that checkbox that asked about using top-level statements? Let's see what that's talking about. 

A program in C# is actually a little more complicated than that first example we tried. A program has to have a class, and that class has to have a method called Main. That's where the program starts running. In order to make it easier, we can use top-level statements, and then the compiler will create that other stuff for us. 


// TODO: Rewrite to add a project to same solution
