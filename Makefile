CC = gcc

FLAGS = -c -m32

OBJS = ./utils/fileUtils.o ./stock/stock.o ./utils/utils.o ./genericArray/genericArray.o

MAIN = cscd240Lab14.c

EXE = ./lab14

all:    lab14
lab14:	${OBJS} ${MAIN}
	${CC} ${OBJS} ${MAIN} -o ${EXE}


stock.o:	./stock/stock.c ./stock/stock.h
	${CC} ${FLAGS} stock.c


fileUitls.o:	./utils/fileUtils.c ./utils/fileUtils.h
	${CC} ${FLAGS} fileUtil.c


utils.o:	./utils/utils.c ./utils/utils.h
	${CC} ${FLAGS} utils.c


genericArray.o:	./genericArray/genericArray.c ./genericArray/genericArray.f
	${CC} ${FLAGS} ./genericArray/genericArray.c

clean:
	rm -rf ./stock/*.o
	rm -rf ./utils/*.o
	rm -rf ./genericArray/*.o
	rm -rf lab14
