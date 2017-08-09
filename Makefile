CFLAGS = `pkg-config --cflags gtk+-3.0` -g
LIBS = `pkg-config --libs gtk+-3.0`
LDFLAGS = 
OBJ = simple_button_app.o os_custom.o

test-psquare: $(OBJ)
	$(CC) -o simple_button_app $(OBJ) $(LIBS) $(LDFLAGS)

clean:
	$(RM) $(OBJ) simple_button_app

all: simple_button_app
