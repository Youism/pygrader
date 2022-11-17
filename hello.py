import sys
from rich.console import Console

console = Console()
console.print("waiting")
with console.status("[yellow left] hello", spinner="simpleDotsScrolling"):
    input()
