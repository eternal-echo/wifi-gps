################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Bsp/usart/wifi/ESP8266/esp8266.cpp \
../Bsp/usart/wifi/ESP8266/esp8266_io.cpp 

OBJS += \
./Bsp/usart/wifi/ESP8266/esp8266.o \
./Bsp/usart/wifi/ESP8266/esp8266_io.o 

CPP_DEPS += \
./Bsp/usart/wifi/ESP8266/esp8266.d \
./Bsp/usart/wifi/ESP8266/esp8266_io.d 


# Each subdirectory must supply rules for building sources it contributes
Bsp/usart/wifi/ESP8266/%.o Bsp/usart/wifi/ESP8266/%.su: ../Bsp/usart/wifi/ESP8266/%.cpp Bsp/usart/wifi/ESP8266/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/imu" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/debug_usart" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/wifi" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/wifi/ESP8266" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/UserApp" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/bds" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/bds/nmea_decode/include" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/imu/I2Cdev" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Bsp-2f-usart-2f-wifi-2f-ESP8266

clean-Bsp-2f-usart-2f-wifi-2f-ESP8266:
	-$(RM) ./Bsp/usart/wifi/ESP8266/esp8266.d ./Bsp/usart/wifi/ESP8266/esp8266.o ./Bsp/usart/wifi/ESP8266/esp8266.su ./Bsp/usart/wifi/ESP8266/esp8266_io.d ./Bsp/usart/wifi/ESP8266/esp8266_io.o ./Bsp/usart/wifi/ESP8266/esp8266_io.su

.PHONY: clean-Bsp-2f-usart-2f-wifi-2f-ESP8266

