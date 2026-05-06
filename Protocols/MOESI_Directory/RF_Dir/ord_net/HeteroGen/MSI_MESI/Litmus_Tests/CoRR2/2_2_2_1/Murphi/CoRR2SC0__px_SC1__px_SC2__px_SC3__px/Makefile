
TARGET = MSI_MESI_CoRR2SC0__px_SC1__px_SC2__px_SC3__px

MURPHIPATH = $2$
INCLUDEPATH = ${MURPHIPATH}/include
SRCPATH = ${MURPHIPATH}/src
CFLAGS = -O3 # Native architecture currently disabled due to verification server arch

all: ${TARGET}

${TARGET}: ${TARGET}.cpp
	g++ ${CFLAGS} -o ${TARGET} ${TARGET}.cpp -I${INCLUDEPATH}

${TARGET}.cpp: ${TARGET}.m
	${SRCPATH}/mu -b ${TARGET}.m

.PHONY: clean
clean:
	-rm -f ${TARGET} SSP_${TARGET} *.cpp
