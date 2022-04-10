/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.h
  * @brief          : Header for main.c file.
  *                   This file contains the common defines of the application.
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2022 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */

/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __MAIN_H
#define __MAIN_H

#ifdef __cplusplus
extern "C" {
#endif

/* Includes ------------------------------------------------------------------*/
#include "stm32f4xx_hal.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */

/* USER CODE END Includes */

/* Exported types ------------------------------------------------------------*/
/* USER CODE BEGIN ET */

/* USER CODE END ET */

/* Exported constants --------------------------------------------------------*/
/* USER CODE BEGIN EC */

/* USER CODE END EC */

/* Exported macro ------------------------------------------------------------*/
/* USER CODE BEGIN EM */

/* USER CODE END EM */

/* Exported functions prototypes ---------------------------------------------*/
void Error_Handler(void);

/* USER CODE BEGIN EFP */

/* USER CODE END EFP */

/* Private defines -----------------------------------------------------------*/
#define ESP8266_USART_TX_Pin GPIO_PIN_2
#define ESP8266_USART_TX_GPIO_Port GPIOA
#define ESP8266_USART_RX_Pin GPIO_PIN_3
#define ESP8266_USART_RX_GPIO_Port GPIOA
#define GPS_USART_TX_Pin GPIO_PIN_10
#define GPS_USART_TX_GPIO_Port GPIOB
#define GPS_USART_RX_Pin GPIO_PIN_11
#define GPS_USART_RX_GPIO_Port GPIOB
#define ESP8266_CH_PD_Pin GPIO_PIN_8
#define ESP8266_CH_PD_GPIO_Port GPIOC
#define ESP8266_RST_Pin GPIO_PIN_9
#define ESP8266_RST_GPIO_Port GPIOC
#define DEBUG_USART_TX_Pin GPIO_PIN_9
#define DEBUG_USART_TX_GPIO_Port GPIOA
#define DEBUG_USART_RX_Pin GPIO_PIN_10
#define DEBUG_USART_RX_GPIO_Port GPIOA
#define MPU6050_INT_Pin GPIO_PIN_1
#define MPU6050_INT_GPIO_Port GPIOI
#define MPU6050_INT_EXTI_IRQn EXTI1_IRQn
#define MPU6050_I2C_SCL_Pin GPIO_PIN_6
#define MPU6050_I2C_SCL_GPIO_Port GPIOB
#define MPU6050_I2C_SDA_Pin GPIO_PIN_7
#define MPU6050_I2C_SDA_GPIO_Port GPIOB
/* USER CODE BEGIN Private defines */

/* USER CODE END Private defines */

#ifdef __cplusplus
}
#endif

#endif /* __MAIN_H */
