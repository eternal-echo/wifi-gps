################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Bsp/usart/bds/nmea_decode/src/context.c \
../Bsp/usart/bds/nmea_decode/src/generate.c \
../Bsp/usart/bds/nmea_decode/src/generator.c \
../Bsp/usart/bds/nmea_decode/src/gmath.c \
../Bsp/usart/bds/nmea_decode/src/info.c \
../Bsp/usart/bds/nmea_decode/src/parse.c \
../Bsp/usart/bds/nmea_decode/src/parser.c \
../Bsp/usart/bds/nmea_decode/src/sentence.c \
../Bsp/usart/bds/nmea_decode/src/time.c \
../Bsp/usart/bds/nmea_decode/src/tok.c 

C_DEPS += \
./Bsp/usart/bds/nmea_decode/src/context.d \
./Bsp/usart/bds/nmea_decode/src/generate.d \
./Bsp/usart/bds/nmea_decode/src/generator.d \
./Bsp/usart/bds/nmea_decode/src/gmath.d \
./Bsp/usart/bds/nmea_decode/src/info.d \
./Bsp/usart/bds/nmea_decode/src/parse.d \
./Bsp/usart/bds/nmea_decode/src/parser.d \
./Bsp/usart/bds/nmea_decode/src/sentence.d \
./Bsp/usart/bds/nmea_decode/src/time.d \
./Bsp/usart/bds/nmea_decode/src/tok.d 

OBJS += \
./Bsp/usart/bds/nmea_decode/src/context.o \
./Bsp/usart/bds/nmea_decode/src/generate.o \
./Bsp/usart/bds/nmea_decode/src/generator.o \
./Bsp/usart/bds/nmea_decode/src/gmath.o \
./Bsp/usart/bds/nmea_decode/src/info.o \
./Bsp/usart/bds/nmea_decode/src/parse.o \
./Bsp/usart/bds/nmea_decode/src/parser.o \
./Bsp/usart/bds/nmea_decode/src/sentence.o \
./Bsp/usart/bds/nmea_decode/src/time.o \
./Bsp/usart/bds/nmea_decode/src/tok.o 


# Each subdirectory must supply rules for building sources it contributes
Bsp/usart/bds/nmea_decode/src/%.o Bsp/usart/bds/nmea_decode/src/%.su: ../Bsp/usart/bds/nmea_decode/src/%.c Bsp/usart/bds/nmea_decode/src/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/imu" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/debug_usart" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/wifi" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/wifi/ESP8266" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/UserApp" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/bds" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/bds/nmea_decode/include" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/imu/I2Cdev" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Bsp-2f-usart-2f-bds-2f-nmea_decode-2f-src

clean-Bsp-2f-usart-2f-bds-2f-nmea_decode-2f-src:
	-$(RM) ./Bsp/usart/bds/nmea_decode/src/context.d ./Bsp/usart/bds/nmea_decode/src/context.o ./Bsp/usart/bds/nmea_decode/src/context.su ./Bsp/usart/bds/nmea_decode/src/generate.d ./Bsp/usart/bds/nmea_decode/src/generate.o ./Bsp/usart/bds/nmea_decode/src/generate.su ./Bsp/usart/bds/nmea_decode/src/generator.d ./Bsp/usart/bds/nmea_decode/src/generator.o ./Bsp/usart/bds/nmea_decode/src/generator.su ./Bsp/usart/bds/nmea_decode/src/gmath.d ./Bsp/usart/bds/nmea_decode/src/gmath.o ./Bsp/usart/bds/nmea_decode/src/gmath.su ./Bsp/usart/bds/nmea_decode/src/info.d ./Bsp/usart/bds/nmea_decode/src/info.o ./Bsp/usart/bds/nmea_decode/src/info.su ./Bsp/usart/bds/nmea_decode/src/parse.d ./Bsp/usart/bds/nmea_decode/src/parse.o ./Bsp/usart/bds/nmea_decode/src/parse.su ./Bsp/usart/bds/nmea_decode/src/parser.d ./Bsp/usart/bds/nmea_decode/src/parser.o ./Bsp/usart/bds/nmea_decode/src/parser.su ./Bsp/usart/bds/nmea_decode/src/sentence.d ./Bsp/usart/bds/nmea_decode/src/sentence.o ./Bsp/usart/bds/nmea_decode/src/sentence.su ./Bsp/usart/bds/nmea_decode/src/time.d ./Bsp/usart/bds/nmea_decode/src/time.o ./Bsp/usart/bds/nmea_decode/src/time.su ./Bsp/usart/bds/nmea_decode/src/tok.d ./Bsp/usart/bds/nmea_decode/src/tok.o ./Bsp/usart/bds/nmea_decode/src/tok.su

.PHONY: clean-Bsp-2f-usart-2f-bds-2f-nmea_decode-2f-src

