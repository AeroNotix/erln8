all:
	gcc -o erln8 erln8.c `pkg-config --cflags --libs glib-2.0 gio-2.0` -DGLIB_DISABLE_DEPRECATION_WARNINGS -Wall
	rm -f ./erl ./erlc ./escript ./dialyzer
	ln -s ./erln8 ./erl
	ln -s ./erln8 ./erlc
	ln -s ./erln8 ./escript
	ln -s ./erln8 ./dialyzer


erln8r: erln8r.c
	gcc -o erln8r erln8r.c -lmenu -lncurses

clean:
	rm -f erln8
	rm -f erln8r
