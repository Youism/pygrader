#!/usr/bin/python3.8

from datetime import date
import random
import time
from playsound import playsound
from schedule.asciiart import *
import sys

from time import sleep
from rich.console import Console

console = Console()

today = date.today()



class bcolors:
    """
    A class represents color pick
    """
    ENDC = '\x1b[0m'
    BLACK = "\033[30m"
    RED = '\033[31m'
    GREEN = '\033[32m'
    YELLOW = '\033[33m'
    BLUE = "\033[34m"
    MAGENTA = "\033[35m"
    CYAN = '\033[36m'


class File:
    """
    A class that control problem sets

    Attributes
    ---------
    filename: str
        the filename to open with
    info: str
        a comment will be wirtten to the file, or as the input filename
    offset: int
        problem sets' offset
    output_file: str
        filename to be written
    index: int
        index of problem set
    right_times: int
        right times of user's answer

    Methods
    ------
    if_right(self, result)
        deal with the right answer
    if_false(self, result)
        deal with the false answer
    write_to_file(self)
        wirte the aggregate to [output_file]
    is_equal(self, result)
        deal with user input
    get_size(self)
        return pset's size
    """

    def __init__(self, filename, info, offset, style='-p',
                 output_file='log.txt') -> None:
        """
        constructor and open [ input.txt  ]file to [self.results]
        """
        self.filename = filename
        self.info = info
        self.offset = offset
        self.output_file = output_file
        self.index = 0
        self.right_times = 0
        self.error_times = 0
        self.tag = 0
        self.ans = []
        with open(filename, 'r') as f:
            s = f.read()
            if style == '-p':
                self.results = s.split()
            elif style == '-m':
                self.results = list(
                    s.strip().replace(
                        ' ', '').replace(
                        '\n', ''))
        self.size = len(self.results)
        print(f"{bcolors.CYAN}本次题库共有：{self.size}道题{bcolors.ENDC}")

    def if_right(self, result):
        """Handler for right case.

        if user's answer is right, print √, and sound
        Parameters
        -------
        result: str
            answer of user input
        """
        print(
            f"{bcolors.GREEN}#{self.index + self.offset} {result} PASSED{bcolors.ENDC}")
        self.ans.append(True)
        self.right_times += 1
        playsound('src/right.wav')
        with console.status("[bold green]singing", spinner='simpleDotsScrolling'):
            sleep(0.5)
        self.print_shape()

        self.tag += 1
        if self.tag == 5:
            playsound('src/seq.wav')
            self.tag = 0

    def if_false(self, result):
        """deal with false answer

        print the result to the console, and play a bad sound

        Parameters
        ------
        result: str
            user's answer

        Returns
        ------
        None
        """

        print(f"{bcolors.RED}#{self.index + self.offset} {result} FAILED{bcolors.ENDC}")
        self.ans.append(False)
        self.error_times += 1
        self.tag = 0
        self.print_shape()
        playsound('src/error.wav')
        input()
        print(
            f"{bcolors.YELLOW}#{self.index + self.offset}\'s answer is {self.results[self.index]}{bcolors.ENDC}")

    def write_to_file(self):
        """write an aggregate to the [output_file]"""

        rate = 1.0 * self.right_times / self.size * 100
        print(f"本次测试结束，正确率是 {bcolors.MAGENTA}{rate:.1f}%{bcolors.ENDC}")
        with open(self.output_file, "a+") as file:
            time_now = today.strftime("%m/%d/20%y")
            file.write(f"{self.info}, {rate:.1f}%, {self.size}, {time_now}\n")

    def is_equal(self, result):
        """
        Juage user result and answer once a time.
        And if reach the end of the pset, write a conclusion to a file.

        Parameters
        ------
        result: str
            user's input
        """
        print("\033c", end="")
        if result == self.results[self.index]:
            self.if_right(result)
        else:
            self.if_false(result)
        self.index += 1
        if self.index == self.size:
            self.write_to_file()

    def get_size(self):
        """
        return size of the pset.
        """
        return self.size

    def print_shape(self):
        """
        print function for [√] and [×].
        """
        for index, i in enumerate( self.ans ):
            if i:
                print(f"{bcolors.GREEN}√{bcolors.ENDC}", end="")
            else:
                print(f"{bcolors.RED}×{bcolors.ENDC}", end="")
            if (index + 1) % 20 == 0: print()
        for i in range(self.size - len(self.ans)):
            print("-", end="")
            if (i + len(self.ans) + 1) % 20 == 0: print() 
        print(f'|{bcolors.GREEN}{self.right_times}{bcolors.ENDC}-{bcolors.RED}{self.error_times}{bcolors.ENDC}-{self.size}|')

def print_ascii():
    random.seed(time.time())
    console.print(random.choice(Dragon), style=f"bold {random.choice(colors)}")

if __name__ == "__main__":
    print("\033c", end="")
    print_ascii()
    offset = int(input(f"Please input offset: "))
    info = input(f"Please input comment: ")
    output_file = 'log.txt' if len(sys.argv) <= 2 else sys.argv[2]
    # input_file = 'src/input.txt'
    input_file = 'src/' + info + '.txt'
    file = File(input_file, info, offset, sys.argv[1], 'src/' + output_file)
    for _ in range(file.get_size()):
        answer = input(f"{bcolors.CYAN}#{file.index + offset}> {bcolors.ENDC}")
        while answer == '':
            answer = input(
                f"{bcolors.CYAN}#{file.index + offset}> {bcolors.ENDC}")
        if answer == '*':
            answer = 'ABCD'
        file.is_equal(answer)

    with console.status("[bold cyan]Done.", spinner='simpleDotsScrolling') as status:
        sleep(1)
    # print(f"{bcolors.CYAN}Done.{bcolors.ENDC}")
