all: myhttp

myhttp: epoll_web.c wrap.c pub.c thread_pool.c
	gcc  -W -Wall -o myhttp epoll_web.c wrap.c pub.c thread_pool.c -pthread

clean:
	rm myhttp