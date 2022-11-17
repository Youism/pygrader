from time import sleep
from rich.console import Console

console = Console()

with console.status("[bold green]singing", spinner='simpleDotsScrolling') as status:
    sleep(2)
