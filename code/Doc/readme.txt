WIFI透传实验+GPS实验


方案架构
	北斗 --USART3--> STM32F103C8T6 --USART2--> ESP8266 --WiFi--> PC

引脚连接
	北斗(gps_config.h)
		GPS-RXD <--> USART3_TX (PB10)
		GPS-TXD <--> USART3_RX (PB11)
		VCC     <--> 3v3
		GND     <--> GND
	ESP8266(bsp_esp8266.h)
		UTXD  <--> USART2_RX (PA3)
		URXD  <--> USART2_TX (PA2)
		CH_PD <--> PB8
		RST   <--> PB9
		VCC   <--> 3v3
		GND   <--> GND
	USB转TTL串口(bsp_uart1.h)
		3v3 <--> 3v3
		GND <--> GND
		RXD <--> USART1_TX (PA9)
		TXD <--> USART1_RX (PA10)

WiFi名称密码和TCP服务器设置(bsp_esp8266_test.h)
	

1.连接引脚，修改wifi和tcp服务器信息后烧录程序。
2.打开野火多功能调试助手
3.在调试助手里面：打开串口调试助手、网络调试助手，设置要连接的服务器的 IP 和端口
4.在网络调试助手接收GPS数据


更多信息请查阅模块用户手册或者模块例程说明文档


AT+GMRAT version:0.22.0.0(Mar 20 2015 10:04:26)
SDK version:1.0.0
compile time:Mar 20 2015 11:00:32

OK