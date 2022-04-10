################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (10.3-2021.10)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
../Bsp/imu/I2Cdev/I2Cdev.cpp 

OBJS += \
./Bsp/imu/I2Cdev/I2Cdev.o 

CPP_DEPS += \
./Bsp/imu/I2Cdev/I2Cdev.d 


# Each subdirectory must supply rules for building sources it contributes
Bsp/imu/I2Cdev/%.o Bsp/imu/I2Cdev/%.su: ../Bsp/imu/I2Cdev/%.cpp Bsp/imu/I2Cdev/subdir.mk
	arm-none-eabi-g++ "$<" -mcpu=cortex-m4 -std=gnu++14 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F429xx -c -I../Core/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc -I../Drivers/STM32F4xx_HAL_Driver/Inc/Legacy -I../Middlewares/Third_Party/FreeRTOS/Source/include -I../Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS -I../Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F -I../Drivers/CMSIS/Device/ST/STM32F4xx/Include -I../Drivers/CMSIS/Include -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/imu" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/debug_usart" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/wifi" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/wifi/ESP8266" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/UserApp" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/bds" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/usart/bds/nmea_decode/include" -I"E:/Study/stm32/f429/repository/wifi/wifi-gps-imu-3/ESP8266/Bsp/imu/I2Cdev" -O0 -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -fno-use-cxa-atexit -Wall -fstack-usage -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Bsp-2f-imu-2f-I2Cdev

clean-Bsp-2f-imu-2f-I2Cdev:
	-$(RM) ./Bsp/imu/I2Cdev/I2Cdev.d ./Bsp/imu/I2Cdev/I2Cdev.o ./Bsp/imu/I2Cdev/I2Cdev.su

.PHONY: clean-Bsp-2f-imu-2f-I2Cdev

