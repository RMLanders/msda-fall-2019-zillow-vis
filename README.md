This project is for use by the Fall 2019 DA 6233 Zillow data group.

To clone this project on your local repo, you will first need to download Git.  Git is a version control.  This means that it allows a group of people to work collaboratively on projects by keeping track of changes, allowing users to contribute to projects without stepping on each others' toes, allowing users to revert to changes if a recent change caused a bug, and a whole other multitude of stuff.  This will help us as we are creating new data files or updating R code.  

For Mac, download here: https://git-scm.com/download/mac
For Windows, download here: https://git-scm.com/download/win

Now, we need to make sure RStudio knows where Git is:

1) If you have Mac, open Terminal.  Type 'which git'.
   If you have Windows, open the Command Prompt.  Type 'where git'.
2) Copy whatever value it gives you.
3) Open RStudio.  Got to Tools -> Global Options -> Git/SVN
4) Ensure that the checkbox at the top is checked
5) Where it asks for the Git executable, paste the path you copied earlier

Next, unless you're comfortable with the command line and would rather use that, download a Git GUI.  I'd suggest GitKraken, as that is what I'm using.

Download GitKraken here: https://www.gitkraken.com/download/windows64
To explore other GitGUIs, go here: https://git-scm.com/downloads/guis

Now, to clone this repo (to clone a repo means to store a project on your local computer), follow these steps:

1) Open GitKraken (or your GitGUI of choice)
2) Click on 'Clone a Repo'
3) In the field that says 'Where to clone to', choose a folder where the project (and all its files) will go.  Remember where you selected, you'll need it later.
4) In the field that says 'URL', paste this: https://github.com/RMLanders/msda-fall-2019-zillow-vis.git
5) Then click 'Clone the repo'

What appears is going to look scary and intimidating, don't let it fool you.  What it's doing is showing you the entire history of the project.  Every change that was made by a collaborator and pushed to the repo and when that change was made is shown by that weird subway-map looking graph in the center.  

Now, let's show off what we can do:

1) Go to RStudio
2) Select File -> Open Project
3) Go to the directory where you cloned the repo (step above)
4) Click on the .rproj file
5) RStudio will open the project, but it may not open any files.  Feel free to open a file within the project to see that they're there.
6) For now, create a new R script file or text file, whatever you want
7) write some R code or text.  Whatever you want.
8) Save the file.  Name it something unique like <yourLastName>_test.R
9) Once it's saved, go back to GitKraken
10) You should see in the right pane, it lists the new file you've just created as a change. 

Let's pretend this is a file you'd like to share with other members of the group. So to do that, we need to push to the remote repository.  Follow the steps below to do so:

1) Click on the 'Stage all changes' button
2) The file name will be listed in the Staged Changes box.  Click in the bottom box, and write a description of your change (you can just write 'created test file' or something for now)
3) Click Commit
4) We're not done yet!  Above the middle pane (the subway map looking graph), there's a 'Push' button.  Click it.
5) BAM!  You've pushed your changes to the repo, so now other folks in the group can pull your changes at their leisure.
6) Let's double-check.  Go to https://github.com/RMLanders/msda-fall-2019-zillow-vis.  You should see your file in there now.

WOOHOO!

Now, let's say you get on there, and realize someone's uploaded a new file since you've cloned the repo onto your local.  We do this by doing a Pull.  All you have to do is:

1) Go into GitKraken, click on the Pull button right next to Push.

Your local repo should now be up-to-date with the remote repository.

Open the project in Finder or RStudio to double check.  


Now, there's loads of useful stuff Git provides such as branches and merging files, but as long as we're working on separate files, we shouldn't need them.  However, if we do find that we are making simultaneous changes to one file, then we will absolutely need to learn that.

If you'd like to read more about Git and the neat things it can do, this is a helpful link to get you started: https://www.atlassian.com/git/tutorials/what-is-version-control
