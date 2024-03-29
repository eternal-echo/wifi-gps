
/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __BDS_USART_H
#define __BDS_USART_H

#ifdef __cplusplus
/*---------------------------- C++ Scope ---------------------------*/
#include "common_inc.h"
#include "nmea/nmea.h"
#include "usart.h"
#include "usart.hpp"
extern "C" {
#endif
/*---------------------------- C Scope ---------------------------*/

#define __GPS_DEBUG     //定义这个宏，在nmea解码时会输出调试信息


void trace(const char *str, int str_size);
void error(const char *str, int str_size);
void gps_info(const char *str, int str_size);
void BDS_UART_RxCpltCallback(UART_HandleTypeDef *UartHandle);
void BDS_UART_RxHalfCpltCallback(UART_HandleTypeDef *UartHandle);
#ifdef __cplusplus
}
/*---------------------------- C++ Scope ---------------------------*/


// bds usart class : usart2
class BDS_Usart : public Usart
{
friend void BDS_UART_RxCpltCallback(UART_HandleTypeDef *UartHandle);
friend void BDS_UART_RxHalfCpltCallback(UART_HandleTypeDef *UartHandle);
friend void trace(const char *str, int str_size);
friend void error(const char *str, int str_size);
friend void gps_info(const char *str, int str_size);
/* public functions ----------------------------------------------------------*/
public:
    BDS_Usart():BDS_UartHandle(husart_){}
    BDS_Usart(UART_HandleTypeDef* husart):Usart(husart),BDS_UartHandle(husart_){}
    ~BDS_Usart(){}
    void init();
    void decode(int32_t signals, Usart * outUsart);
/* public enum ---------------------------------------------------------*/
    enum class STATUS:int32_t{
        RX_NONE = (int32_t)0x00,
        RX_HALF = (int32_t)0x01,
        RX_FULL = (int32_t)0x02,
        TX_DATA = (int32_t)0x04,
        TX_END = (int32_t)0x08,
    };
private:
/* Private function prototypes -----------------------------------------------*/
    void GMTconvert(nmeaTIME *source_time, nmeaTIME *convert_time, uint8_t GMT,uint8_t area);
    uint8_t IsLeapYear(uint8_t iYear) ;
/* private enum ---------------------------------------------------------*/
    enum {BDS_RECV_BUFF_SIZE = 512};
/* private variables ---------------------------------------------------------*/
    uint8_t bds_receive_buffer[BDS_RECV_BUFF_SIZE] = {0};
    UART_HandleTypeDef* &BDS_UartHandle; // usart3 引用（别名）

    double deg_lat;//转换成[degree].[degree]格式的纬度
    double deg_lon;//转换成[degree].[degree]格式的经度

    nmeaINFO info;//GPS解码后得到的信息
    nmeaPARSER parser; //解码时使用的数据结构  
    nmeaTIME beiJingTime;//北京时间 
};
extern BDS_Usart bdsUsart;

#endif
#endif /* __BDS_USART_H */
