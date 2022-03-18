/**
  ******************************************************************************
  * @file    main.c
  * @author  fire
  * @version V1.0
  * @date    2015-01-xx
  * @brief   WF-ESP8266 WiFiģ�����
  ******************************************************************************
  * @attention
  *
  * ʵ��ƽ̨:Ұ�� iSO STM32 ������ 
  * ��̳    :http://www.firebbs.cn
  * �Ա�    :https://fire-stm32.taobao.com
  *
  ******************************************************************************
  */ 
 
#include "stm32f10x.h"
#include "bsp_usart1.h"
#include "bsp_SysTick.h"
#include "bsp_esp8266.h"
#include "bsp_esp8266_test.h"
#include "bsp_dht11.h"
#include "bsp_led.h"
#include "./dwt_delay/core_delay.h"
#include "gps_config.h"

int nmea_decode_test(void);

/**
  * @brief  ������
  * @param  ��
  * @retval ��
  */
int main ( void )
{
	/* ��ʼ�� */
	USART1_Config ();                                                       //��ʼ������1
	CPU_TS_TmrInit();                                                       //��ʼ��DWT��������������ʱ����
	LED_GPIO_Config();                                                    //��ʼ�� LED ��
	ESP8266_Init ();                                                        //��ʼ��WiFiģ��ʹ�õĽӿں�����
	GPS_Config();
	printf ( "\r\n��ʼ����ESP8266 WiFiģ��\r\n" );                          //��ӡ����������ʾ��Ϣ
  
	ESP8266_StaTcpClient_Unvarnish_ConfigTest();                          //��ESP8266��������

	printf ( "\r\n���eso8266���ԣ���ʼ����GPS����\r\n" );    //��ӡ����������ʾ��Ϣ
	esp8266_printf("��ʼ����GPS����\r\n");
	nmea_decode_test();
	while ( 1 )
	{

		//ESP8266_CheckRecvDataTest(); // ESP8266 ���һ���Ƿ���յ�������

	}
	
}

/**
  * @brief  nmea_decode_test ����GPSģ����Ϣ
  * @param  ��
  * @retval ��
  */
int nmea_decode_test(void)
{
	double deg_lat;//ת����[degree].[degree]��ʽ��γ��
	double deg_lon;//ת����[degree].[degree]��ʽ�ľ���
	
    nmeaINFO info;          //GPS�����õ�����Ϣ
    nmeaPARSER parser;      //����ʱʹ�õ����ݽṹ  
    uint8_t new_parse=0;    //�Ƿ����µĽ������ݱ�־
  
    nmeaTIME beiJingTime;    //����ʱ�� 

    /* �����������������Ϣ�ĺ��� */
    nmea_property()->trace_func = &trace;
    nmea_property()->error_func = &error;
    nmea_property()->info_func = &gps_info;

    /* ��ʼ��GPS���ݽṹ */
    nmea_zero_INFO(&info);
    nmea_parser_init(&parser);

	while(1)
	{
		if(GPS_HalfTransferEnd)     /* ���յ�GPS_RBUFF_SIZEһ������� */
		{
			/* ����nmea��ʽ���� */
			nmea_parse(&parser, (const char*)&gps_rbuff[0], HALF_GPS_RBUFF_SIZE, &info);

			GPS_HalfTransferEnd = 0;   //��ձ�־λ
			new_parse = 1;             //���ý�����Ϣ��־ 
		}
		else if(GPS_TransferEnd)    /* ���յ���һ������ */
		{

			nmea_parse(&parser, (const char*)&gps_rbuff[HALF_GPS_RBUFF_SIZE], HALF_GPS_RBUFF_SIZE, &info);

			GPS_TransferEnd = 0;
			new_parse =1;
		}

		if(new_parse )                //���µĽ�����Ϣ   
		{    
			/* �Խ�����ʱ�����ת����ת���ɱ���ʱ�� */
			GMTconvert(&info.utc,&beiJingTime,8,1);

			/* �������õ�����Ϣ */
			esp8266_printf("\r\nʱ��%d-%02d-%02d,%d:%d:%d\r\n", beiJingTime.year+1900, beiJingTime.mon,beiJingTime.day,beiJingTime.hour,beiJingTime.min,beiJingTime.sec);

			//info.lat lon�еĸ�ʽΪ[degree][min].[sec/60]��ʹ�����º���ת����[degree].[degree]��ʽ
			deg_lat = nmea_ndeg2degree(info.lat);
			deg_lon = nmea_ndeg2degree(info.lon);

			esp8266_printf("\r\nγ�ȣ�%f,����%f\r\n",deg_lat,deg_lon);
			esp8266_printf("\r\n���θ߶ȣ�%f �� ", info.elv);
			esp8266_printf("\r\n�ٶȣ�%f km/h ", info.speed);
			esp8266_printf("\r\n����%f ��", info.direction);

			esp8266_printf("\r\n����ʹ�õ�GPS���ǣ�%d,�ɼ�GPS���ǣ�%d",info.satinfo.inuse,info.satinfo.inview);

			esp8266_printf("\r\n����ʹ�õı������ǣ�%d,�ɼ��������ǣ�%d",info.BDsatinfo.inuse,info.BDsatinfo.inview);
			esp8266_printf("\r\nPDOP��%f,HDOP��%f��VDOP��%f",info.PDOP,info.HDOP,info.VDOP);

			new_parse = 0;
		}
	}

    /* �ͷ�GPS���ݽṹ */
    // nmea_parser_destroy(&parser);

    
    //  return 0;
}
/*********************************************END OF FILE**********************/
