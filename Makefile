
TARGET = hello
CFLAGS += -Wall
LDFLAGS += 

SOURCES = main.c \
          helloworld.c

OBJS = $(SOURCES:%.c=obj/%.o)


$(TARGET):$(OBJS)
	$(CC) -o $@ $^ $(LDFLAGS)

obj/%.o:%.c
	@mkdir -p obj/
	$(CC) -o $@ -c $< $(CFLAGS)

clean:
	rm -rf obj/ $(TARGET)
	


