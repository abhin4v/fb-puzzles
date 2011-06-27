levenshtein.so: levenshtein_distance.c levenshtein.c
	gcc -c levenshtein_distance.c
	gcc -c -fPIC -I/usr/include/python2.5/ levenshtein.c
	gcc -shared levenshtein_distance.o levenshtein.o -o levenshtein.so
	rm -f *.o

clean: 
	rm -f *.o *.so *.pyc
