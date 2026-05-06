
TARGET = MSI_MESI_SSC0__pyx_SC1__pyx

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
