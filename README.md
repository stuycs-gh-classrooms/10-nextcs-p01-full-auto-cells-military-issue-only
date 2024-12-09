[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/2bl0h1Mb)
# NeXtCS Project 01
### Matthew Gultom
### Noirit Sami
---

### Overview
Your mission is create either:
- Life-like cellular automata [life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life), [life-like](https://en.wikipedia.org/wiki/Life-like_cellular_automaton), [demo](https://www.netlogoweb.org/launch#https://www.netlogoweb.org/assets/modelslib/Sample%20Models/Computer%20Science/Cellular%20Automata/Life.nlogo).
- Breakout/Arkanoid [demo 0](https://elgoog.im/breakout/)  [demo 1](https://www.crazygames.com/game/atari-breakout)
- Space Invaders/Galaga

This project will be completed in phases. The first phase will be to work on this document. Use markdown formatting. For more markdown help [click here](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) or [here](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)


---

## Phase 0: Selection, Analysis & Plan

#### Selected Project: Life-like cellular automata (Day & Night simulation)

### Necessary Features
What are the core features that your program should have? These should be things that __must__ be implemented in order to make the program useable/playable, not extra features that could be added to make the program more interesting/fun.

- Generating a grid of cells that are initially yellow (as the background)
- Yellow background (representing "day")
- Purple cells (representing "night")
- A cell that's "night" will become "day" if it has 3, 6, 7, or 8 neighbors that are "day".
- A cell that's "day" will remain as "day" if it has 3, 4, 6, 7, or 8 neighbors that are "day".
- That means that a cell that's "day" will become "night", and a cell that's "night" will stay as "night", if it has less than 3 neighbors that are "day".

### Extra Features
What are some features that are not essential to the program, but you would like to see (provided you have time after completing the necessary features. These can be customizations that are not part of the core requirements.

- Sky transitions depending on if it's day or night
  - For example, when day has "dominated" the grid of cells, a sun could appear and be drawn. Then after some time, the sun would disappear and the grid of cells will slowly go back to night.
  - Likewise, when night has "dominated" the grid of cells, a moon could appear and be drawn. Then after some time, the moon would disappear and the grid of cells will go back to day. It would be a continous cycle of change between day and night from now on.

- You will also be allowed to choose which phase "dominates" first (day or night).

### Array Usage
How will you be using arrays in this project?

1D Array:
- We will be using 1-D arrays to draw the sun/moon on the screen depending on the phase (day or night). Selected cells in a row will change
color one at a time, from one cell in a row to another cell in the same row. This way, the sun/moon will be drawn in steps, giving a nice cool effect.

2D Array:
- Using 2D arrays to generate the grid of cells, which will be the background.

### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- Press `d` to have "day" dominate the grid first.
- Press `n` to have "night" dominate the grid first.
- Press `space` to toggle the animations/movements on/off.

Mouse Control:
- Mouse movement: Change the area in which "day" or "night" is dominating. If the mouse isn't moving, then the area will be randomly chosen.
- Mouse pressed: When the mouse is pressed, a cell will change to the opposite color, which will affect the entire animation.

### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.

Cell
- Instance variables:
  - `position`, `size`, `color`
- METHODS
  - `display()`, `updateColor()`

Grid
- Instance variables:
  - `rows`, `cols`, `state`
- METHODS
  - `createGrid()`, `showGrid()`, `animate()`, `changeState()`
