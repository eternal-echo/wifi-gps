# wifi-gps
嵌入式软件部分移植了FreeRTOS实时操作系统，硬件电路的主控制器选择STM32F429核心板。主控制器通过串口控制ATGM-332D模块实现定位，并对采集到的定位信息进行解析、转换和滤波处理；选择MPU6050作为姿态传感器，该模块通过I2C接口与主控制器间通信。采用Kalman滤波算法解算得到复眼相机的姿态信息；基于信号量和任务通知实现了多个传感器线程间定位信息与姿态信息的传输。信息处理与融合完毕后，ESP8266模块通过TCP/IP协议将数据传输至上位机。

## IMU
移植arduino库[I2Cdev](https://github.com/jrowberg/i2cdevlib)，驱动MPU6050。通过[卡尔曼滤波器](https://github.com/TKJElectronics/KalmanFilter)求解旋转角度roll和pitch。

## BDS
移植野火的例程

## ESP8266
移植自HAL库官方例程