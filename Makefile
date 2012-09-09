CC=g++
CFLAGS=-c -Wall
LDFLAGS=-lGL -lglu
SOURCES=$(wildcard src/*.cpp)
OBJECTS=$(SOURCES:.cpp=.o)
OBJECTS=$(OBJECTS:src=obj)
EXECUTABLE=AlchemicalBag

all: $(SOURCES) $(EXECUTABLE)

$(EXECUTABLE): $(OBJECTS)
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.c.o:
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm $(OBJECTS) $(EXECUTABLE)
