import sys
import pset
import difflib
from rich.console import Console

console = Console()


class BigProblem:
    def __init__(self, filename, index) -> None:
        self.index = int(index) - 1
        with open(filename, 'r') as f:
            s = f.read().split('---')
            self.subject = [s[i] for i in range(len(s)) if i % 2 == 0]
            self.answer = [s[i] for i in range(len(s)) if i % 2 != 0]
            assert len(self.subject) == len(self.answer)
            if self.index > len(self.subject) - 1:
                console.print(
                    f"[E] The maximum lenght is exceeded",
                    style="red")
            else:
                console.print(
                    f"There are {len(self.subject)} questions to complete.",
                    style="bold green")
                console.print(
                    f"There are {len(self.subject) - self.index} questions left.",
                    style="green")
                console.print(pset.dragon, style="purple")
                input("Enter to begin...")

    def show_rate(self, s1, s2):
        rate = difflib.SequenceMatcher(None, s1, s2).quick_ratio()
        if rate >= 0.6:
            console.print("PASSED \u2705", style="bold green", end=' ')
        else:
            console.print("FAILED \u274c", style="bold red", end=' ')
        console.print(f"Your scroe is {int( rate * 100)}")

    def show_subject(self):
        for i in range(self.index, len(self.subject)):
            print("\033c", end="")
            console.print(
                f"#{i+1}. {self.subject[i]}",
                style="bold underline dark_orange3 on black")
            user_input = self.multi_input()
            self.show_rate(user_input, self.answer[i])
            with console.status("[bold purple]Press Enter to show answer..."):
                input()
            console.print(
                f"{self.answer[i]}",
                style="bold underline bright_cyan")
            with console.status("[bold yellow]Enter to next problem..."):
                input()
        console.print(
            f"[yellow]Congratulation![/] You have completed all the {len(self.subject)} questions")

    def multi_input(self):
        lines = []

        while True:
            user_input = input()
            if user_input == '':
                break
            else:
                lines.append(user_input + '\n')
        return ''.join(lines)


if __name__ == "__main__":
    print("\033c", end="")
    index = 1 if len(sys.argv) <= 1 else sys.argv[1]
    filename = 'src/907problem.star'
    pro = BigProblem(filename, index)
    pro.show_subject()
