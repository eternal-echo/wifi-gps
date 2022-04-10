#include <debug_usart.hpp>

void DebugUsart::init()
{
    /* Once the UART is intialized, start an asynchrounous recursive 
    listening. the HAL_UART_Receive_IT() call below will wait until one char is
    received to trigger the HAL_UART_RxCpltCallback(). The latter will recursively
    call the former to read another char.  */
//    rxBuffer.head = 0;
//    rxBuffer.tail = 0;
//    HAL_UART_Receive_IT(husart_, (uint8_t *)&rxBuffer.data[rxBuffer.tail], 1);
}


///**
//  * @brief  Receive Data over the UART interface.
//  *         The data is fetched from a ring buffer that is asynchonously and continuously
//            filled with the received data.
//  * @param  Buffer: a buffer inside which the data will be read.
//  * @param  Length: the Maximum size of the data to receive.
//  * @retval int32_t: the actual data size that has been received.
//  */
//int32_t DebugUsart::recv(uint8_t* Buffer, uint32_t Length)
//{
//  uint32_t ReadData = 0;
//
//  /* Loop until data received */
//  while (Length--)
//  {
//    uint32_t tickStart = HAL_GetTick();
//    do
//    {
//      if(rxBuffer.head != rxBuffer.tail)
//      {
//        /* serial data available, so return data to user */
//        *Buffer++ = rxBuffer.data[rxBuffer.head++];
//        ReadData++;
//
//        /* check for ring buffer wrap */
//        if (rxBuffer.head >= RING_BUFFER_SIZE)
//        {
//          /* Ring buffer wrap, so reset head pointer to start of buffer */
//          rxBuffer.head = 0;
//        }
//        break;
//      }
//    }while((HAL_GetTick() - tickStart ) < DEFAULT_TIME_OUT);
//  }
//
//  return ReadData;
//}

///**
//  * @brief  Rx Callback when new data is received on the UART.
//  *         给USART的回调函数（C）使用(in usart.c)，需要进行包装，实现混合编程
//  * @param  UartHandle: Uart handle receiving the data.
//  * @retval None.
//  */
//
//void Debbug_UART_RxCpltCallback(UART_HandleTypeDef *UartHandle)
//{
//  if(UartHandle == debugUsart.WiFiUartHandle)
//  {
//    /* If ring buffer end is reached reset tail pointer to start of buffer */
//    if(++debugUsart.rxBuffer.tail >= debugUsart.RING_BUFFER_SIZE)
//    {
//    	debugUsart.rxBuffer.tail = 0;
//    }
//    HAL_UART_Receive_IT(UartHandle, (uint8_t *)&debugUsart.rxBuffer.data[debugUsart.rxBuffer.tail], 1);
//  }
//}


