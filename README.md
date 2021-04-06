# MarsRover

Welcome to your Mass Rover! In this directory, you'll find the files you 
need to excute. Please read this guide before continue. 

## Installation

before start everything, you need to install ruby 2.6.0   please check for more details(https://rvm.io/). after that please move to your local folder in your terminal. 

And then execute:

    $ bundle

## Configuration
In the data.txt you can find data inputs. The first line of input is the upper-right coordinates of the plateau.
The rest of the input is information pertaining to the rovers that have been deployed. Each rover has two lines of input. The first line gives the rover's position, and the second line is a series of instructions telling the rover how to explore the plateau.

The position is made up of two integers and a letter separated by spaces, corresponding to the x and y coordinates and the rover's orientation.

Each rover will be finished sequentially, which means that the second rover won't start to move until the first one has finished moving.
currently there two rovers data in this file and you can change as you with mean while respecting above rules.
## Usage
To run simply execute

    $ bin/rovers_run


## Test

Mas rover use Rspec to run it unit test and integration test. This test file can find in spec folder. There one integration test and unit tests.
To run simply execute to run test

    $ rspec spec

