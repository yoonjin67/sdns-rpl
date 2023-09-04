all: dis-sender sender-node receiver-node root-node
CONTIKI=../../..
#TARGET = openmote
#BOARD = openmote-b

MODULES += os/services/shell
MAKE_ROUTING = MAKE_ROUTING_RPL_CLASSIC
include $(CONTIKI)/Makefile.include
BSL_FLAGS += -e

ifeq ($(BOARD),openmote-b)

        BSL_FLAGS += --bootloader-invert-lines

endif

