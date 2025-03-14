BUILD_DIR = build
SOURCE_DIR = src
CFLAGS = -g -Wall -Wextra  -Wpedantic
all:main

main:$(BUILD_DIR)/main.o $(BUILD_DIR)/main_2.o $(BUILD_DIR)/main_ll.o
	clang -o  $(BUILD_DIR)/main $(CFLAGS) $(BUILD_DIR)/main.o $(BUILD_DIR)/main_2.o $(BUILD_DIR)/main_ll.o 

$(BUILD_DIR)/main.o:$(SOURCE_DIR)/main.cpp
	clang -c $(CFLAGS) $(SOURCE_DIR)/main.cpp -o $(BUILD_DIR)/main.o

$(BUILD_DIR)/main_2.o:$(SOURCE_DIR)/main_2.c
	clang -c $(CFLAGS) $(SOURCE_DIR)/main_2.c -o $(BUILD_DIR)/main_2.o

$(BUILD_DIR)/main_ll.o:$(SOURCE_DIR)/main_ll.ll
	clang -c $(CFLAGS) $(SOURCE_DIR)/main_ll.ll -o $(BUILD_DIR)/main_ll.o

clean:
	rm -f $(BUILD_DIR)/main $(BUILD_DIR)/*.o

.PHONY: all clean