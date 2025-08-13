CC ?= gcc
CFLAGS ?= -Wall -Wextra -std=c99
LDFLAGS ?=

TARGET = temp-converter
PREFIX = /usr/bin

all: $(TARGET)

$(TARGET): $(TARGET).c
	$(CC) $(CFLAGS) -o $@ $^ $(LDFLAGS)

install: $(TARGET)
	install -d $(DESTDIR)$(PREFIX)
	install -m 755 $(TARGET) $(DESTDIR)$(PREFIX)

uninstall:
	rm -f $(PREFIX)/$(TARGET)

clean:
	rm -f $(TARGET)
