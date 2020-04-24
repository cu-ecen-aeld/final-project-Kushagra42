
#Setting gcc as default compiler flag

ifeq ($(CC),)
	CC=$(CROSS_COMPILE)gcc
endif

ifeq ($(CFLAGS),)
	CFLAGS= -g -Wall -Werror
endif

ifeq ($(LDFLAGS),)
	LDFLAGS= -pthread -lrt
endif

#Recipe to compile writer.c
<<<<<<< HEAD
all:Client_OP Server_OP Hello_OP Uart_write_OP Uart_read_OP Temperature_i2c_OP Uart_raspi_OP uart_read_RPI_OP uart_write_RPI_OP

uart_read_RPI_OP:./Uart_rpi/uart_read_RPI
	$(CC) $(CFLAGS) -o uart_read_RPI ./Uart_rpi/uart_read_RPI.c

uart_write_RPI_OP:./Uart_rpi/uart_write_RPI
	$(CC) $(CFLAGS) -o uart_write_RPI ./Uart_rpi/uart_write_RPI.c
=======
all:Client_OP Server_OP Hello_OP Uart_write_OP Uart_read_OP Temperature_i2c_OP Uart_raspi_OP Uart_readwrite_OP
>>>>>>> eff962aafdc6ac999dd5d37cf280e4033b112e39

Temperature_i2c_OP:./Temp_i2c/Temperature_i2c
	$(CC) $(CFLAGS) -o Temperature_i2c ./Temp_i2c/Temperature_i2c.c

Uart_raspi_OP:./Uart_rpi/Uart_raspi
	$(CC) $(CFLAGS) -o Uart_raspi ./Uart_rpi/Uart_raspi.c

Client_OP:./Socket_Client/Client
	$(CC) $(CFLAGS) -o Client ./Socket_Client/Client.c
	
Server_OP:./Socket_Server/Server
	$(CC) $(CFLAGS) -o Server ./Socket_Server/Server.c

Hello_OP: Hello
	$(CC) $(CFLAGS) -o Hello Hello.c

Uart_write_OP:./UART_Communication/uart_write
	$(CC) $(CFLAGS) -o uart_write ./UART_Communication/uart_write.c

Uart_read_OP:./UART_Communication/uart_read
	$(CC) $(CFLAGS) -o uart_read ./UART_Communication/uart_read.c

Uart_readwrite_OP:./UART_Communication/uart_ReadWrite
	$(CC) $(CFLAGS) -o uart_ReadWrite ./UART_Communication/uart_ReadWrite.c

#cleaning all the executable files
clean:
<<<<<<< HEAD
	rm -f *.o Client Server Hello uart_write uart_read Temperature_i2c uart_read_RPI uart_write_RPI
=======
	rm -f *.o Client Server Hello uart_write uart_read Temperature_i2c uart_ReadWrite
>>>>>>> eff962aafdc6ac999dd5d37cf280e4033b112e39


