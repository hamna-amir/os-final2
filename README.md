# os-final2
 It simulates how real operating systems handle multitasking, memory, and user interactions! 
•	Boot screen with OS name & loading animation – Implemented in oslogo.sh and os.cpp
•	User-specified RAM, HDD, CPU cores at start – Implemented in os.cpp
•	Multitasking with thread support and context switching –pthread, sem_t, and queues in os.cpp
•	Resource management (RAM, HDD, CPU cores) – Implemented in os.cpp
•	Shutdown option with farewell message – Implemented in shutdown.sh and os.cpp
•	Ready queue and waiting queue scheduling – Implemented in os.cpp
•	Resource request at startup


Core Simulator Logic

    os.cpp – Main OS simulation logic

Utility Applications (Each a standalone C++ program)

    calc.cpp – Calculator

    calendar.cpp – Calendar display

    clock.cpp – Live clock

    file_creator.cpp – File creation utility

    file_deleter.cpp – File deletion utility

    file_renamer.cpp – File renaming utility

    notepad.cpp – Notepad for text input

    rng.cpp – Random number generator

    sort.cpp – Sorting utility (bubble sort)

