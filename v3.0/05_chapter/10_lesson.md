**WDI Fundamentals Unit 5**

---

##Thinking Programmatically

Before you set out to write a program it is important to understand how computers "think." Computers solve problems differently than you or I might. They do not learn to perform tasks but need detailed, step-by-step instructions every time they perform a task.

The only things a computer knows are the things we tell it.

If you're having friends over for dinner and would like to cook up a new dish, you'll most likely find an interesting recipe and follow the instructions step-by-step in order to make something you've never made before.

Similarly, a **program** is a series of instructions that a computer can follow to achieve a goal.

**Programming** is the task of writing those instructions in a language that the computer can understand.


## Pseudo Code

When we write a program, we need to figure out a way to translate the ideas that are in our heads into code.

**Pseudo code** is a way to plan out your program before coding it. It is a detailed, step-by-step description of what a computer must do, expressed in plain English rather than in a programming language.

As tempting as it may be to jump right into a problem and start writing code, you'll find that taking a few minutes to focus on your approach will save you valuable time as you start writing actual code. Often during the planning process you'll think of scenarios you hadn't originally anticipated. As the old proverb goes, "Measure twice and cut once."

## Writing Pseudo Code

Take, for example, a program that lets a player know whether he or she has passed the current level. Pseudo code for this program might look like the following:

```
passingScore = 150 points
get playerScore

if playerScore >= passingScore
	display message "Current level: Passed"
otherwise
	display message "Current level: Failed"

```

Again, the goal is to think through the problem and *break it down into simple steps*, which can then be written out in code. Since there are no formal rules as to how pseudo code must be written, each person's version will likely vary slightly. Indentation is often used to keep statements organized and grouped together.

As another example, perhaps we want to create a thermostat program that turns on the heat when the current room temperature is less than the target temperature.

```
get targetTemperature
targetTemperature = 72
repeat forever
  currentTemperature = get sensor reading
  if currentTemperature < (targetTemperature - 5),
    turn on heater
  if currentTemperature >= targetTemperature,
    turn off heater

```
We first need to have the user enter a target temperature (in this case it is 72). Then we will continually check to see if the current temperature is less than the target temperature minus 5. If it is, we will turn on the heater. If the current temperature is greater than or equal to the target temperature, we will turn off the heater. And it's as simple as that!

Breaking down problems in this fashion will likely seem a little foreign in the beginning. Once you gain some practice, though, this will become second nature.

Many of the programs that you'll be working on in the following chapters might seem a little daunting at first. Instead of trying to tackle a problem all at once, take a few minutes to think about the overall goal of the program and then break that down into series of short instructions. It will surely be time well spent.

---

Now it's your turn. Get some practice writing pseudo code [in this exercise](11_exercise.md).
