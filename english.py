#!/usr/bin/python3.8

from pset import *
from datetime import date
from playsound import playsound
import sys

from time import sleep

from rich.console import Console
console = Console()

today = date.today()


class English(File):
    """a class that inheritances the [FIle] class

    override the [is_right] and [write_to_file] method
    """

    def __init__(self, filename, info, offset, style='-m',
                 output_file='log.txt') -> None:
        super().__init__(filename, info, offset, style, output_file)
        self.scores = [0.0] * 3

    def if_right(self, result):
        """
        If get right answer.
        """
        console.print(
            f"#{self.index + self.offset} {result} PASSED",
            style="bold green")
        self.right_times += 1
        self.ans.append(True)
        # self.scores += (0.5 if self.index + self.offset <= 20 else 2)
        cur_index = self.index + self.offset
        if cur_index <= 20:
            self.scores[0] += 0.5
        elif cur_index <= 40:
            self.scores[1] += 2
        else:
            self.scores[2] += 2
        self.print_shape()
        console.print(f"{sum( self.scores )}/60", style="bold blue underline ")
        playsound('src/right.wav')
        with console.status("[bold green]singing", spinner='simpleDotsScrolling'):
            sleep(1)
        self.tag += 1
        if self.tag == 5:
            playsound('src/seq.wav')
            self.tag = 0

    def write_to_file(self):
        """write an aggregate to the [output_file]"""
        rate = 1.0 * self.right_times / self.size * 100
        console.print(
            f"本次测试结束，正确率 {rate:.1f}%, 参考得分:{sum( self.scores ) + 40}",
            style="bold dark_orange3")
        with open(self.output_file, "a+") as file:
            time_now = today.strftime("%m/%d/20%y")
            file.write(
                f"{self.info},{self.scores[0]},{self.scores[1]},{self.scores[2]}, {sum( self.scores )},{time_now}\n")


if __name__ == "__main__":
    print("\033c", end="")
    print_ascii()
    offset = int(input(f"Please input offset: "))
    info = input(f"Please input comment: ")
    output_file = 'eng.txt' if len(sys.argv) <= 2 else sys.argv[2]
    file = English("src/input.txt", info, offset, '-m', 'src/' + output_file)
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
