CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra -I include
TARGET = cpu_scheduler

SRCS = src/main.cpp \
       src/core/Process.cpp \
       src/scheduler/FCFS.cpp \
       src/scheduler/SJF.cpp \
       src/scheduler/SRTF.cpp \
       src/scheduler/Priority.cpp \
       src/scheduler/RoundRobin.cpp \
       src/utils/GanttChart.cpp \
       src/utils/InputHandler.cpp

all: $(TARGET)

$(TARGET): $(SRCS)
	$(CXX) $(CXXFLAGS) $(SRCS) -o $(TARGET)

clean:
	rm -f $(TARGET)

run: $(TARGET)
	./$(TARGET)

.PHONY: all clean run
