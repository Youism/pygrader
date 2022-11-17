import time
from rich.console import Console 
console = Console()


start = time.time()
# with console.status(f"[yellow] Working with (45 min)..."):
import signal
import time
 
def handler(signum, frame):
    print(f'pass time is {pass_time}')
 
 
signal.signal(signal.SIGINT, handler)
 
pass_time = 0
while True:
    end = time.time()
    pass_time = end - start
        # print(end - start)
    if pass_time >= 5 :break
    
print(f'pass time is {pass_time}')
