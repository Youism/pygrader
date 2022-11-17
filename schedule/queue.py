import random
import os
import time
from rich.console import Console
from playsound import playsound
from time import sleep
from datetime import date
from multiprocessing import Process
from asciiart import *

console = Console()
TIME_SLICE = 45
songs = os.listdir('./src')


class Queue:
    time_share = [60, 45, 30]
    preemption_time = 180
    start_time = time.time()
    preempted_times = 1
    flag = False
    def __init__(self, priority, items, time_slice=TIME_SLICE) -> None:
        self.priority = priority
        self.items = items
        self.time_slice = time_slice
        self.pass_time = 0

    def empty(self):
        return len(self.items) == 0

    def pop(self):
        if self.empty():
            return None
        return self.items.pop(0)

    def first(self):
        return self.items[0]

    def add_item(self, item):
        self.items.append(item)

    def add_items(self, items):
        self.items.extend(items)

    def work(self, time_index):
        cur_item = self.first()
        cur_time = self.time_share[time_index]
        if not cur_item:
            console.print(f"You have finished all the schedules!")

        start = time.time()
        random.seed(start)
        console.print(f"{random.choice(Dragon)}", style = f"bold {random.choice(colors)}")
        with console.status(f"[yellow] Working with [ {cur_item} ](time limit is {cur_time} min)..."):
            try:
                for i in range(int( cur_time / 5 )):
                    sleep(5*60)
                    console.print(f"{(i+1)*5} mins passed...")
                    end = time.time()
                    self.pass_time = end - start
                    if int( (end - self.start_time) / 60 ) >= 180 * self.preempted_times: 
                        console.print(f"The task is being preempted {self.preempted_times} times")
                        self.preempted_times += 1
                        self.flag = True

            except KeyboardInterrupt:
                end = time.time()
                self.pass_time = end - start
                console.print(f"pass times is {int( self.pass_time / 60 )} mins")
        console.print(f"[ {cur_item} ] is done.\n", style="purple")

        procs = []
        random.seed(time.time())
        song = 'src/' + random.choice(songs)
        proc1 = Process(target=playsound, args=(song,))
        procs.append(proc1)
        proc1.start()
        input("Enter to stop music...")
        proc1.terminate()
        # complete the processes
        for proc in procs:
            proc.join()


def change_itmes(queues, n):
    # q1.add_items(q2.items)
    # q2.items.clear()
    # q2.add_items(q3.items)
    # q3.items.clear()
    index = ( 2 if n==2 else n + 1 )
    item = queues[n].pop()
    while True:
        question = input(f'[{item}] Do you complete this task? [y/n]')
        if question == 'n':
            queues[index].add_item(item)
            break
        elif question == 'y': break 
        else:
            continue
    if Queue.flag:
        if not queues[2].empty():
            queues[0].add_items(queues[2].items)
            queues[2].items.clear()
        Queue.flag = False



def print_queue(queues):
    for q in queues:
        if q.empty():
            continue
        console.print(f"|-", end='', style="bold green")
        for item in q.items:
            console.print(
                f"|{item}:{record[item]} mins|",
                end='',
                style="bold cyan")
            if item != q.items[-1]:
                console.print(" -> ", end='', style="bold green")
        print()


def add_to_record(record, item, pass_time):
    record[item] += int( pass_time  / 60 )


def write_record(record):
    today = date.today()
    time_now = today.strftime("%m/%d/20%y")
    s = time_now + ',' + str(record).replace('{', '').replace('}', '\n')
    with open('record.txt', 'a+') as f:
        f.write(s)


def open_file(q1, q2, q3):
    with open('schedule.txt', 'r') as f:
        for line in f:
            pairs = line.split()
            schedule_name, priority = pairs[0], int(pairs[1])
            record[schedule_name] = 0
            if priority == 1:
                q1.add_item(schedule_name)
            elif priority == 2:
                q2.add_item(schedule_name)
            else:
                q3.add_item(schedule_name)


def all_empty(queues):
    return all([q.empty() for q in queues])

q1, q2, q3 = Queue(1, []), Queue(2, []), Queue(3, [])
queues = [q1, q2, q3]
record = {}
if __name__ == "__main__":
    open_file(q1, q2, q3)
    n = -1 # index for items

    while not all_empty(queues):
        print("\033c", end="")
        n = (n + 1) % 3
        print_queue(queues)
        if queues[n].empty(): continue
        queues[n].work(n)
        print(f"After work, pass time is {int( queues[n].pass_time /60 )}")
        add_to_record(record, queues[n].first(), queues[n].pass_time)
        change_itmes(queues, n)
    write_record(record)
