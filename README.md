# My Custom Scripts

These are custom scripts that I found to be useful for my development enviroment.

They work with Mac, Linux and Git Bash for Windows. With the exception of: 
```bash
alias python='winpty python.exe'
```
Which is meant for Git Bash for Windows. Typing in 'python' to get Python REPL going will cause it show a blank cursor and become non-responsive. This ensures that the python executable can be seen by winpty and run like normal.