## 1.1 Think About Time Reflection

In this assignment, I tried to think of what prevents me from being productive and how can I apply the techniques listed to overcome these hurdles. One hurdle is that I am easily distracted by "small" noises - e.g. finger drumming, eating sounds, pen clicking (aka misophonia). A second hurdle, is the fear of not completing a challenge.

I looked at all of the techniques listed. I've never meditated and look forward to an opportunity to try it. Guided and moving meditation sounds promising to me. I don't think I could handle sensory meditation with its focus on sensory stimuli. One idea mentioned in the counter-intuitive productivity article - #3: Try to Get Almost Nothing Done - makes a great deal of sense to me. Rather than panicking about not completing a challenge in one fell swoop, try to accumulate a lot of tiny successes.

Time Boxing is the use of a fixed period of time (e.g. 30 minutes - 25 of which are used for focused work and the other 5 for a break) for work or study. This is how I've tried to manage my work/study time for most of my life. It certainly works.

My Time Management plan for Phase 0 is:

* On a weekly basis, start early - read any assignments and challenges as soon as they are posted. I learn by repetition and starting over. The sooner I start, the more opportunities I'll have to do this
* On a daily basis, start my work day early and get a good night's sleep.
* If at all possible, have one free evening each week where I don't do any work.

## 1.2 The Command Line Reflection

* What is a shell? What is "bash?"

A shell is a command line interface. Before there were graphical user interfaces (and mice/touchpads), the medium for giving commands to a computer was a keyboard. The shell is the interface - we type commands into the shell and the shell translates those commands into machine language.

Bash is the current shell for Unix and (I'm going to guess) Linux.

* What was the most challenging for you in going through this material?

The biggest challenge was to not cheat and create/manipulate files by pointing and clicking.  I am a lousy touch typist. This challenge has convinced me of the importance of learning how to touch type. This material feels like playing scales when trying to learn a musical instrument -  not a lot of fun (at first), rewarding if done regularly.

* Were you able to successfully use all of the commands?

I was able to use most of the commands (although I've been mixing up Unix and Windows commands). Pushd and popd were the ones giving me the most trouble.

* In your opinion, what are the most important commands and arguments to know?

Since the command line is new to me, I would say that ls, cd, and ../ are the most important for me. With these, I can at least find my way around the file system. Once I know my way around, then I can focus on creating/removing directories and files.

* Can you remember what each of the following does of the top of your head? Write what each does.

-pwd  This tells you where you currently are in the file system

-ls   This lists the contents (files and directories) of the directory that you are currently in.

-mv   This allows you rename a file.

-cd   This allows you to move to a directory contained in the directory you are currently located in.

-../  This allows you to move in the opposite direction - i.e. up to the directory that contains the directory your are currently located in.

-touch   This allows you to create empty files.

-mkdir   This allows you to create directories.

-less    This displays the contents of a file one screenful at a time.

-rmdir   This allows you to delete an empty directory.

-rm      This allows you to delete a file.

-help    This lets you find information on commands.


## 1.4 Forking and Cloning Reflection 

* If you were going to write instructions for a new person on how to create a new repo, fork a repo, and clone a repo, what would they be? Why would you fork a repository as opposed to create a new one?

Instructions for creating a new repo:

1. Go to your GitHub profile page.
2. On the upper-right corner, next to your avatar, click on the "+" symbol.
3. Click on "New repository"
4. Enter a repository name - something you won't forget.
5. Select "public" (and not "private") for your repository visibility.
6. Add an "MIT License" to your repository. 
7. Click "Create Repository" and you are done.

Instructions for forking repo:

1. Go to the repo that you want to fork
2. On the upper-right corner, below your avatar, click the "fork" button. This will take you from the repo you have forked to your copy of the repo in your GitHub account.

Instructions for cloning a repo:

1. Open a terminal and navigate to the directory where you want to clone a copy of the repo.
2. Double check (use 'pwd') to make sure you are in the directory you intended.
3. Go to the forked repo that you want to clone.
4. Look on the lower-right corner for a URL -- above it may be the label 'HTTPS clone URL'. Either copy the URL or click on the 'clipboard' symbol.
5. Going back to the terminal you opened (and have navigated to your deired directory), type the following (without the quote marks)  'git clone' and paste the URL you copied in Step 4.
6. Press Enter and you should be done (after some processing).
7. Note that you may have to type your login data too.

Why would you fork a repository as opposed to create a new one?

I would fork a repository when I wanted to make changes to files that could later be merged into a master file.Also, by forking a copy, I can safely manipulate the forked files without fear of damaging the master files. I would be free to try anything on my copy of the repo.

* What struggles did you have setting up git and GitHub? What did you learn in the process?

Setting up git and GitHub was not difficult, but I have to get used to not being able to move my work around at will (or delete work). I'm getting used to using the command line interface. 