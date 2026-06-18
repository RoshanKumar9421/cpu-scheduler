# ⚙️ CPU Scheduler Simulator

A command-line CPU scheduling simulator built in **C++17** that implements five classic scheduling algorithms with Gantt chart visualization.

## 📋 Supported Algorithms

| # | Algorithm | Type |
|---|-----------|------|
| 1 | **FCFS** — First Come First Serve | Non-preemptive |
| 2 | **SJF** — Shortest Job First | Non-preemptive |
| 3 | **Round Robin** | Preemptive (configurable quantum) |
| 4 | **Priority Scheduling** | Non-preemptive |
| 5 | **SRTF** — Shortest Remaining Time First | Preemptive |

## 🏗️ Project Structure

```
cpu-scheduler/
├── include/
│   ├── core/
│   │   └── Process.hpp          # Process class definition
│   ├── scheduler/
│   │   ├── FCFS.hpp
│   │   ├── SJF.hpp
│   │   ├── SRTF.hpp
│   │   ├── Priority.hpp
│   │   └── RoundRobin.hpp
│   └── utils/
│       ├── GanttChart.hpp       # Gantt chart visualization
│       └── InputHandler.hpp     # User input handling
├── src/
│   ├── core/
│   │   └── Process.cpp
│   ├── scheduler/
│   │   ├── FCFS.cpp
│   │   ├── SJF.cpp
│   │   ├── SRTF.cpp
│   │   ├── Priority.cpp
│   │   └── RoundRobin.cpp
│   ├── utils/
│   │   ├── GanttChart.cpp
│   │   └── InputHandler.cpp
│   └── main.cpp                 # Entry point
├── Makefile
└── README.md
```

## 🚀 Getting Started

### Prerequisites

- **g++** with C++17 support
- **make** (build tool)

### Build & Run

```bash
# Compile the project
make

# Compile and run
make run

# Clean build artifacts
make clean
```

### Or compile manually

```bash
g++ -std=c++17 -I include src/main.cpp src/core/Process.cpp \
  src/scheduler/FCFS.cpp src/scheduler/SJF.cpp src/scheduler/SRTF.cpp \
  src/scheduler/Priority.cpp src/scheduler/RoundRobin.cpp \
  src/utils/GanttChart.cpp src/utils/InputHandler.cpp \
  -o cpu_scheduler

./cpu_scheduler
```

## 💻 Usage

When you run the program, you'll be prompted to:

1. **Choose input method** — enter process data manually or use built-in test data
2. **Select a scheduling algorithm** — pick from the five available algorithms
3. **View results** — see the execution timeline, Gantt chart, and performance metrics

### Example Output

```
=== CPU Scheduler ===

Select input method:
1. Enter process data manually
2. Use default test data
Choice: 2

Select scheduling algorithm:
1. FCFS (First Come First Serve)
2. SJF (Shortest Job First)
3. Round Robin
4. Priority Scheduling
5. SRTF (Shortest Remaining Time First)
Choice: 1

=== FCFS Execution ===
Time 0: P1 starts executing
Time 24: P1 completes
Time 24: P2 starts executing
Time 27: P2 completes
Time 27: P3 starts executing
Time 30: P3 completes

=== Gantt Chart ===
 -----------------------------------------------------------------------
|                          P1                          |   P2   |   P3   |
 -----------------------------------------------------------------------
0                                                     24       27       30

=== Results ===
PID     Arrival Burst   Completion      Waiting Turnaround
P1      0       24      24              0       24
P2      0       3       27              24      27
P3      0       3       30              27      30

Average Waiting Time: 17
Average Turnaround Time: 27
```

## 📊 Metrics Displayed

For each run, the simulator outputs:

- **Completion Time** — when each process finishes
- **Waiting Time** — total time a process spends waiting in the ready queue
- **Turnaround Time** — total time from arrival to completion
- **Average Waiting Time** — mean waiting time across all processes
- **Average Turnaround Time** — mean turnaround time across all processes
- **Gantt Chart** — visual timeline of process execution

## 🛠️ Technologies

- **Language:** C++17
- **Build System:** GNU Make
- **Compiler:** g++
